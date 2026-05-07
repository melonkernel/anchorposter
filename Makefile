.PHONY: all clean template toffe lamin anchor

# Subdirs that contain a buildable poster (each has its own Makefile).
# Add new posters here as they are created.
SUBDIRS = template anchor

all: $(SUBDIRS)

template:
	$(MAKE) -C template

toffe:
	$(MAKE) -C toffe

lamin:
	$(MAKE) -C lamin

anchor:
	$(MAKE) -C anchor

clean:
	@for d in $(SUBDIRS); do \
		[ -f $$d/Makefile ] && $(MAKE) -C $$d clean || true; \
	done
