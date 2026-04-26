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
