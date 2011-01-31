/*
 * This program uses the host CURAND API to generate 100
 * pseudorandom floats.
 *
 * The code bas was taken from CUDA documentation (SDK ver. 3.2) and was therefore copyright NVidia corporation.
 *
 * Furher modifications were made by me (Krzysztof Skrzętnicki).
 */
#include <stdio.h>
#include <stdlib.h>
#include <cuda.h>
#include <curand.h>

#include <boost/lexical_cast.hpp>

#define CUDA_CALL(x) do { if((x) != cudaSuccess) {	\
      printf("Error at %s:%d\n",__FILE__,__LINE__);	\
      return EXIT_FAILURE;}} while(0)
#define CURAND_CALL(x) do { if((x) != CURAND_STATUS_SUCCESS) {	\
      printf("Error at %s:%d\n",__FILE__,__LINE__);		\
      return EXIT_FAILURE;}} while(0)

#ifndef NUM_COUNT
#define NUM_COUNT 100
#endif

#ifdef GENFLOAT

typedef float ElType;
#define genFun(x,y,z) curandGenerateUniform(x,y,z)
#define PRINTF_FORMAT "%f\n"

#else

typedef unsigned int ElType;
#define genFun(x,y,z) curandGenerate(x,y,z)
#define PRINTF_FORMAT "%u\n"

#endif

int main(int argc, char *argv[])
{
  size_t n = NUM_COUNT;

  if (argc > 1)
    {
      using boost::lexical_cast;
      n = lexical_cast<size_t>(argv[1]);
    }

  size_t i;
  curandGenerator_t gen;
  ElType *devData, *hostData;
  /* Allocate n floats on host */
  hostData = (ElType *)calloc(n, sizeof(ElType));
  /* Allocate n floats on device */
  CUDA_CALL(cudaMalloc((void **)&devData, n * sizeof(ElType)));
  /* Create pseudo-random number generator */
  CURAND_CALL(curandCreateGenerator(&gen,
				    CURAND_RNG_PSEUDO_DEFAULT));
  /* Set seed */
  CURAND_CALL(curandSetPseudoRandomGeneratorSeed(gen, 1234ULL));
  /* Generate n floats on device */
  CURAND_CALL(genFun(gen, devData, n));
  /* Copy device memory to host */
  CUDA_CALL(cudaMemcpy(hostData, devData, n * sizeof(ElType),
		       cudaMemcpyDeviceToHost));
  /* Show result */
  for(i = 0; i < n; i++) {
    printf(PRINTF_FORMAT, hostData[i]);
  }
  /* Cleanup */
  CURAND_CALL(curandDestroyGenerator(gen));
  CUDA_CALL(cudaFree(devData));
  free(hostData);
  return EXIT_SUCCESS;
}
