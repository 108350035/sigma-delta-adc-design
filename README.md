# 有效位數14位之sigma delta adc 電路設計 以tsmc 28nm實現

採樣時中為1MHz

sigma delta架構為二階CIFF以及一位量化器

以tsmc 28nm 實現

模擬電路之電源為1.8V，數位電路之電源為1V

搭配工具:virtuoso spectre + ams + design compiler


## matlab與simulink 模型

![image](https://github.com/108350035/sigma-delta-adc-design/blob/main/SDADC/simulink_model.JPG)

## SDADC與SD電路

![image](https://github.com/108350035/sigma-delta-adc-design/blob/main/SDADC/SD_ADC_schematic.JPG)


![image](https://github.com/108350035/sigma-delta-adc-design/blob/main/SDADC/SD_schemtaic.JPG)

## 噪音整形圖及輸出圖

![image](https://github.com/108350035/sigma-delta-adc-design/blob/main/SDADC/noise_shape.JPG)

![image](https://github.com/108350035/sigma-delta-adc-design/blob/main/SDADC/OUT_wave.JPG)


## 其餘的在檔案裡，包括數位濾波器電路 面積數據


