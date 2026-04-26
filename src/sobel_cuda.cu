#include <stdio.h>
#include <cuda_runtime.h>

__global__ void sobelKernel(unsigned char* input, unsigned char* output, int width, int height) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    int Gx = 0, Gy = 0;

    if (x > 0 && y > 0 && x < width - 1 && y < height - 1) {
        int idx = y * width + x;

        Gx = -input[(y-1)*width + (x-1)] - 2*input[y*width + (x-1)] - input[(y+1)*width + (x-1)]
             + input[(y-1)*width + (x+1)] + 2*input[y*width + (x+1)] + input[(y+1)*width + (x+1)];

        Gy = -input[(y-1)*width + (x-1)] - 2*input[(y-1)*width + x] - input[(y-1)*width + (x+1)]
             + input[(y+1)*width + (x-1)] + 2*input[(y+1)*width + x] + input[(y+1)*width + (x+1)];

        int mag = min(255, abs(Gx) + abs(Gy));
        output[idx] = mag;
    }
}

int main() {
    printf("CUDA Sobel Edge Detection Running...\n");
    return 0;
}
