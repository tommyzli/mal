SRCS = step0_repl.elm
RAWS = $(SRCS:%.elm=%.raw.js)
BINS = $(SRCS:%.elm=%.js)

all: $(RAWS)

$(RAWS): $(SRCS)
	elm-make $(SRCS) --output $@
	./elm-io.sh $@ $(BINS)

clean:
	rm *.js
