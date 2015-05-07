####################################
# Makefile sample with go
# 2015-05-05 M.Horigome
####################################
GOPATH=$(CURDIR)/_shared/
GO=GOPATH=$(GOPATH) go
#GO_COMMON_OPTS=
GO_BUILD=$(GO) build $(GO_COMMON_OPTS)
GO_TEST=$(GO) test $(GO_COMMON_OPTS)
GO_GET=$(GO) get $(GO_COMMON_OPTS)

# config to _shared 
SRC_MYLIB = $(wildcard $(CURDIR)/_shared/src/mypackage/*.go)

# config projects
SRC_PRJ1 = ./project1/...
OUT_PRJ1 = ./project1.out

SRC_PRJ2 = ./project2/...
OUT_PRJ2 = ./project2.out

# make all
all:build_project1 build_project2

#make test
test:test_mypackage test_project1 test_project2

#make clean
clean:
	rm $(OUT_PRJ1)
	rm $(OUT_PRJ2)

# for test
test_mypackage:
	$(GO_TEST) $(SRC_MYLIB)

test_project1:
	$(GO_TEST) $(SRC_PRJ1)

test_project2:
	$(GO_TEST) $(SRC_PRJ2)

# for build
build_project1:
	$(GO_BUILD) -o $(OUT_PRJ1) $(SRC_PRJ1)

build_project2:
	$(GO_BUILD) -o $(OUT_PRJ2) $(SRC_PRJ2)

