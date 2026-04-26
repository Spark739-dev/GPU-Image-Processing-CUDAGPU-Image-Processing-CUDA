# GPU-Accelerated Image Edge Detection using CUDA

## 📌 Overview
This project demonstrates how GPU computing using NVIDIA CUDA can accelerate image processing tasks. Specifically, it implements Sobel edge detection and compares execution performance between CPU and GPU implementations.

## 🎯 Objective
The goal of this project is to highlight the performance benefits of parallel computing by applying edge detection on images using CUDA kernels.

## ⚙️ Technologies Used
- CUDA C++
- NVIDIA GPU
- (Optional) OpenCV for image handling

## 🧠 How It Works
The Sobel operator is used to detect edges in an image by calculating gradients in horizontal and vertical directions.

Two implementations are included:
- **CPU Version**: Sequential processing of pixels
- **GPU Version**: Parallel processing using CUDA threads

Each pixel is processed independently on the GPU, significantly improving speed.

## 🚀 Build Instructions
Make sure CUDA Toolkit is installed.

```bash
make
```
## Proof of Exceution:

<img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/80937a2a-201b-4761-afa1-034fad4cc3f6" />

<img width="450" height="487" alt="2" src="https://github.com/user-attachments/assets/e7f98c4c-23b3-4cca-88b2-502c38deca17" />

