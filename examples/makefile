

NUM_COUNT := -DNUM_COUNT=1000000
GENFLOAT := -UGENFLOAT

CUDA_INCLUDE_PATH := -I/home/tener/localopt/cuda/include
CUDA_LINK_PATH := -L/home/tener/localopt/cuda/lib64

all: haskell-demo host-demo

sha1-test:
	./host-api-example 1000000 | sha1sum
	./curand-demo 1000000 | sha1sum

haskell-demo:
	ghc ${NUM_COUNT} ${GENFLOAT} --make -O3 -Wall -fno-warn-unused-do-bind Main.hs -o curand-demo

host-demo:
	g++ ${NUM_COUNT} ${GENFLOAT} ${CUDA_INCLUDE_PATH} ${CUDA_LINK_PATH} -lcurand host-api-example.cpp -o host-api-example

haskell-lib:
	@echo "Run the following command:"
	@echo ffipkg ${CUDA_INCLUDE_PATH} ${CUDA_LINK_PATH} -lcurand curand.h

clean:
	rm -f *.o *.hi *~