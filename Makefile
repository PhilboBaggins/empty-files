PREFIX := zeros-
SUFFIX := .img.bz2
ALL := ${PREFIX}1GB${SUFFIX} \
	${PREFIX}2GB${SUFFIX} \
	${PREFIX}4GB${SUFFIX} \
	${PREFIX}8GB${SUFFIX} \
	${PREFIX}16GB${SUFFIX} \

.PHONY: all clean

all: ${ALL}

${PREFIX}1GB${SUFFIX}:
	./build-zero-file.sh 1M 1024 $@
${PREFIX}2GB${SUFFIX}:
	./build-zero-file.sh 1M 2048 $@
${PREFIX}4GB${SUFFIX}:
	./build-zero-file.sh 1M 4096 $@
${PREFIX}8GB${SUFFIX}:
	./build-zero-file.sh 1M 8192 $@
${PREFIX}16GB${SUFFIX}:
	./build-zero-file.sh 1M 16384 $@

clean:
	rm -f ${ALL}
