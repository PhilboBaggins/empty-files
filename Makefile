SUFFIX := .img.bz2
ALL := 1GB${SUFFIX} 2GB${SUFFIX} 4GB${SUFFIX} 8GB${SUFFIX} 16GB${SUFFIX}

.PHONY: all clean

all: ${ALL}

1GB${SUFFIX}:
	./build-empty-image.sh 1M 1024 $@
2GB${SUFFIX}:
	./build-empty-image.sh 1M 2048 $@
4GB${SUFFIX}:
	./build-empty-image.sh 1M 4096 $@
8GB${SUFFIX}:
	./build-empty-image.sh 1M 8192 $@
16GB${SUFFIX}:
	./build-empty-image.sh 1M 16384 $@

clean:
	rm -f ${ALL}
