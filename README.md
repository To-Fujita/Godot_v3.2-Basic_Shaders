# Godot_v3.2-Basic_Shaders
## 1. Description:
I have created some basic shaders. These shaders are able to mix to any pictures. Please check out the usage below.  

## 2. Demo:
[Basic Shaders Demo](https://to-fujita.github.io/Godot_v3.2-Basic_Shaders/Basic_Shaders.html)  
This Demo is confirmed by Firefox (Ver. 75.0.0/64 bit) and Google Chrome (Ver. 81.0/64 bit) under the condition of Windows 10. However it is not working on the Microsoft Edge.   

## 3. Usage
These Basic Shaders are composed a base picture at "TextureRect" and a shader on "ColorRect". You can set any pictures to "TextureRect", then choose a shader by clicking the eye mark. After selected a shader, you can set the position and the size for selected shader by setting the value in "Rect". Some shaders are able to set the parameters by setting the value in "Shader Param" under the "Material".  
![Basic Shader 001](https://to-fujita.github.io/Images/Basic_Shader_001.png "Images for Basic Shader 001")

## 4. Shaders
### (1) Aberration Filter
This is a chromatic abrration filter that is separated in its 3 RGB layers.
### (2) Average Filter (Mean Filter)
This filter is simply to replace each pixel value in an image with the average value of its neighbors, including itself.  
![Basic Shader 002](https://to-fujita.github.io/Images/Basic_Shader_002.png "Images for Basic Shader 002")
### (3) Background Noise Shader
This shader is based on "Book Of Shaders-Godot" at reference.  
### (4) Binary Conversion
This filter is also simply to replace each pixcel value in the value of black or white based on the threshold value.
### (5) Default Filter
This filter is a default filter on Godot Game Engine. This filter is working under the condition of GLES3.   
### (6) Edge Detection
This Edge Detection Filter is created by based on "Prewitt Filter" below. The "Sobel Filter" is also stored in the Shaders folder.
![Basic Shader 005](https://to-fujita.github.io/Images/Basic_Shader_005.png "Images for Basic Shader 005")
### (7) Gaussian Filter
This is a gaussian filter based on the figure below.
![Basic Shader 003](https://to-fujita.github.io/Images/Basic_Shader_003.png "Images for Basic Shader 003")
### (8) Invert Shader
This shader is based on "Book Of Shaders-Godot" at reference.  
### (9) Mirage Shader
This shader is based on "Book Of Shaders-Godot" at reference.  
### (10) Monochrome Filter
This filter is simply to replace each pixcel value in the monotone value.
### (11) Mosic Filter (Simple)
This filter is working under the condition of GLES3. It is similar to the Pixelize Filter.  
### (12) Mosic Filter
This filter is working under the condition of GLES3. This is added the average in a block to the "Mosic Filter (Simple)" above.  
### (13) Motion Filter
This is a motion filter based on the figure below.
![Basic Shader 004](https://to-fujita.github.io/Images/Basic_Shader_004.png "Images for Basic Shader 004")
### (14) Negative Filter
This filter is simply to replace each pixcel value in the subtracted the value from one. 
### (15) Noise Shader
This shader is based on "Book Of Shaders-Godot" at reference.  
### (16) Pixelize Filter
This filter is simply to replace some pixels in the same value.
### (17) Sepia Filter
This filter is to replace each pixcel value in the sepia tone value.
### (18) Whirl Shader
This shader is based on "Book Of Shaders-Godot" at reference.  
### (19) Mixture the Binary Filter and the Default Filter
This filter is added the Binary Filter based on the Default Filter.
### (20) Mixture the Edge Detection and the Default Filter
This filter is added the Edge Detection Filter based on the Default Filter.
### (21) Mixture the Edge Detection and the Motion Filter
This filter is added the Edge Detection Filter based on the Motion Filter.

## 5. Reference:
[Godot Game Engine](https://godotengine.org/) : Free and open source 2D and 3D game engine   
[Book Of Shaders-Godot](https://github.com/jayaarrgh/BookOfShaders-Godot) :  BookOfShaders in Godot Shader Language  

## 6. License:
MIT  

## 7. Author:
[T. Fujita](https://github.com/To-Fujita)
