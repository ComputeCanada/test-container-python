IMAGE   := "dleskecc/tester.py"
SOURCES := Dockerfile

all: .release

.release: $(SOURCES)
	docker build -t $(IMAGE) .
	docker push $(IMAGE)
	touch .release
