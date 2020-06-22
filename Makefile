ZZ ?= $(shell which zz)
CWD ?= $(shell pwd)

ZZFLAGS =

export ZZ_MODULE_PATHS += ":$(CWD)/.."

default: build

release: ZZFLAGS+="--release -0"
release: build

build:
	$(ZZ) build $(ZZFLAGS)

clean:
	$(ZZ) clean

check:
	$(ZZ) check

test:
	$(ZZ) test $(TEST)

bench:
	$(ZZ) bench

CWD ?= $(shell pwd)

.PHONY: libuv

build: libuv

libuv: target/lib/libuv.a

target/lib/libuv.a:
	mkdir -p target
	{ \
		cd libuv && \
		sh ./autogen.sh && \
		CFLAGS=-fPIC ./configure --disable-shared --prefix=$(CWD)/target && \
		make && \
		make install && \
		find $(CWD)/target/include/uv/**.h -type f | xargs sed 's/uv\//.\//g' -i; \
	} >&2

distclean: clean
	$(MAKE) $@ -C libuv
