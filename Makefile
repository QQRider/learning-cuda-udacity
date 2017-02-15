OBJ=cube
NVCC ?= /usr/local/cuda-8.0/bin/nvcc 

All:$(OBJ)

%:%.cu
	$(NVCC) -o $@ $^

.PHONY:clean

clean:
	rm OBJ 
