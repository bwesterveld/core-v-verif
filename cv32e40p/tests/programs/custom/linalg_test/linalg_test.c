#include <stdio.h>
#define N 8
#define M 8


void matrixMultiply(int A[N][N], int B[M][M], int C[N][M]) {
    int i, j, k;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            C[i][j] = 0;
            for (k = 0; k < N; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}


int main() {
    // NOP sled for automated testing START
    __asm__ __volatile__ (
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
    );

    int A[N][N];
    int B[M][M];
    int C[N][M];
    int i, j;

    // Initialize matrix A
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            A[i][j] = i + j;
        }
    }

    // Initialize matrix B
    for (i = 0; i < M; i++) {
        for (j = 0; j < M; j++) {
            B[i][j] = i - j;
        }
    }

    // Perform matrix multiplication
    matrixMultiply(A, B, C);

    // Print the result matrix C
    printf("Result:\n");
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            printf("%d ", C[i][j]);
        }
        printf("\n");
    }

    // NOP sled for automated testing STOP
    __asm__ __volatile__ (
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
    );

    return 0;
}