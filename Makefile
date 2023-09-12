PREFIX := zeros-
SUFFIX := .img.bz2
ALL := ${PREFIX}01GB${SUFFIX} \
	${PREFIX}02GB${SUFFIX} \
	${PREFIX}04GB${SUFFIX} \
	${PREFIX}08GB${SUFFIX} \
	${PREFIX}16GB${SUFFIX} \
	${PREFIX}32GB${SUFFIX} \

.PHONY: all clean

all: ${ALL}

${PREFIX}01GB${SUFFIX}:
	./build-zero-file.sh 1M 1024 $@
${PREFIX}02GB${SUFFIX}:
	./build-zero-file.sh 1M 2048 $@
${PREFIX}04GB${SUFFIX}:
	./build-zero-file.sh 1M 4096 $@
${PREFIX}08GB${SUFFIX}:
	./build-zero-file.sh 1M 8192 $@
${PREFIX}16GB${SUFFIX}:
	./build-zero-file.sh 1M 16384 $@
${PREFIX}32GB${SUFFIX}:
	./build-zero-file.sh 1M 32768 $@

clean:
	rm -f ${ALL}
