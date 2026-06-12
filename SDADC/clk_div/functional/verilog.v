/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP5
// Date      : Tue Jun  9 22:31:18 2026
/////////////////////////////////////////////////////////////


module clk_div ( clk, rst_n, clk64, clk256 );
  input clk, rst_n;
  output clk64, clk256;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;
  wire   [4:0] cnt64;
  wire   [6:0] cnt256;

  DFCNQD1BWP7T40P140 cnt64_reg_4_ ( .D(N5), .CP(clk), .CDN(rst_n), .Q(cnt64[4]) );
  DFCNQD1BWP7T40P140 cnt64_reg_3_ ( .D(N4), .CP(clk), .CDN(rst_n), .Q(cnt64[3]) );
  DFCNQD1BWP7T40P140 cnt64_reg_2_ ( .D(N3), .CP(clk), .CDN(rst_n), .Q(cnt64[2]) );
  DFCNQD1BWP7T40P140 cnt64_reg_1_ ( .D(N2), .CP(clk), .CDN(rst_n), .Q(cnt64[1]) );
  DFCNQD1BWP7T40P140 cnt64_reg_0_ ( .D(N1), .CP(clk), .CDN(rst_n), .Q(cnt64[0]) );
  DFCNQD1BWP7T40P140 cnt256_reg_6_ ( .D(N12), .CP(clk), .CDN(rst_n), .Q(
        cnt256[6]) );
  DFCNQD1BWP7T40P140 cnt256_reg_5_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(
        cnt256[5]) );
  DFCNQD1BWP7T40P140 cnt256_reg_4_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(
        cnt256[4]) );
  DFCNQD1BWP7T40P140 cnt256_reg_3_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(
        cnt256[3]) );
  DFCNQD1BWP7T40P140 cnt256_reg_2_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(
        cnt256[2]) );
  DFCNQD1BWP7T40P140 cnt256_reg_1_ ( .D(N7), .CP(clk), .CDN(rst_n), .Q(
        cnt256[1]) );
  DFCNQD1BWP7T40P140 cnt256_reg_0_ ( .D(N6), .CP(clk), .CDN(rst_n), .Q(
        cnt256[0]) );
  DFCNQD1BWP7T40P140 clk256_reg ( .D(n6), .CP(clk), .CDN(rst_n), .Q(clk256) );
  DFCNQD1BWP7T40P140 clk64_reg ( .D(n5), .CP(clk), .CDN(rst_n), .Q(clk64) );
  INVD1BWP7T40P140 U9 ( .I(cnt64[0]), .ZN(N1) );
  INVD1BWP7T40P140 U10 ( .I(cnt64[1]), .ZN(n7) );
  NR2D1BWP7T40P140 U11 ( .A1(N1), .A2(n7), .ZN(n18) );
  AOI21D1BWP7T40P140 U12 ( .A1(N1), .A2(n7), .B(n18), .ZN(N2) );
  ND3D1BWP7T40P140 U13 ( .A1(cnt64[0]), .A2(cnt64[1]), .A3(cnt64[2]), .ZN(n17)
         );
  INVD1BWP7T40P140 U14 ( .I(cnt64[3]), .ZN(n8) );
  NR2D1BWP7T40P140 U15 ( .A1(n8), .A2(n17), .ZN(n19) );
  AOI21D1BWP7T40P140 U16 ( .A1(n17), .A2(n8), .B(n19), .ZN(N4) );
  ND3D1BWP7T40P140 U17 ( .A1(cnt256[0]), .A2(cnt256[1]), .A3(cnt256[2]), .ZN(
        n14) );
  INVD1BWP7T40P140 U18 ( .I(cnt256[3]), .ZN(n9) );
  NR2D1BWP7T40P140 U19 ( .A1(n9), .A2(n14), .ZN(n13) );
  AOI21D1BWP7T40P140 U20 ( .A1(n14), .A2(n9), .B(n13), .ZN(N9) );
  INVD1BWP7T40P140 U21 ( .I(cnt256[0]), .ZN(N6) );
  INVD1BWP7T40P140 U22 ( .I(cnt256[1]), .ZN(n10) );
  NR2D1BWP7T40P140 U23 ( .A1(N6), .A2(n10), .ZN(n15) );
  AOI21D1BWP7T40P140 U24 ( .A1(N6), .A2(n10), .B(n15), .ZN(N7) );
  ND2D1BWP7T40P140 U25 ( .A1(n13), .A2(cnt256[4]), .ZN(n12) );
  INVD1BWP7T40P140 U26 ( .I(cnt256[5]), .ZN(n11) );
  NR2D1BWP7T40P140 U27 ( .A1(n11), .A2(n12), .ZN(n16) );
  AOI21D1BWP7T40P140 U28 ( .A1(n12), .A2(n11), .B(n16), .ZN(N11) );
  OA21D1BWP7T40P140 U29 ( .A1(n13), .A2(cnt256[4]), .B(n12), .Z(N10) );
  OA21D1BWP7T40P140 U30 ( .A1(n15), .A2(cnt256[2]), .B(n14), .Z(N8) );
  ND2D1BWP7T40P140 U31 ( .A1(n16), .A2(cnt256[6]), .ZN(n20) );
  OA21D1BWP7T40P140 U32 ( .A1(n16), .A2(cnt256[6]), .B(n20), .Z(N12) );
  OA21D1BWP7T40P140 U33 ( .A1(n18), .A2(cnt64[2]), .B(n17), .Z(N3) );
  ND2D1BWP7T40P140 U34 ( .A1(n19), .A2(cnt64[4]), .ZN(n21) );
  OA21D1BWP7T40P140 U35 ( .A1(n19), .A2(cnt64[4]), .B(n21), .Z(N5) );
  XNR2D1BWP7T40P140 U36 ( .A1(clk256), .A2(n20), .ZN(n6) );
  XNR2D1BWP7T40P140 U37 ( .A1(clk64), .A2(n21), .ZN(n5) );
endmodule

