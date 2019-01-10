ifeq ($(mode),)
mode := debug
endif

link_args := -Xswiftc -Ounchecked $(addprefix -Xcc ,-O2 -ffast-math -ffp-contract=fast -march=native)

gybs := $(shell find Sources Tests -type f -name '*.gyb')
conv_gybs := $(patsubst %.gyb,%,$(gybs))
sources := $(conv_gybs) $(shell find Sources Tests -type f -name '*.swift')
sources := $(sources) $(shell find Sources Tests -type f -name '*.c')
headers := $(sources) $(shell find Sources Tests -type f -name '*.h')
sources := $(sources) $(headers)

yaml := ./.build/${mode}.yaml
run_args := -c $(mode) $(link_args)

all: $(yaml)

run: $(yaml)
	$(prefix) swift run $(run_args)

test: $(yaml)
	$(prefix) swift test $(run_args)

$(yaml): gyb
	swift build -v $(run_args)

Tests/LinuxMain.swift: Tests/BaseMathTests/BaseMathTests.swift

gyb: $(sources)

%.swift: %.swift.gyb
	gyb --line-directive '' -o $@ $<

%.c: %.c.gyb
	gyb --line-directive '' -o $@ $<

%.h: %.h.gyb
	gyb --line-directive '' -o $@ $<

Sources/BaseMath/BaseMath.swift Sources/BaseMath/BaseVector.swift Sources/CBaseMath/CBaseMath.c: mathfuncs.py
Sources/CBaseMath/include/CBaseMath.h: Sources/CBaseMath/CBaseMath.c

.PHONY: clean   
clean:
	rm -rf .build $(conv_gybs)

