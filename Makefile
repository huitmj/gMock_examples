CC=cl
REMOVE=del

GTEST_ROOT=../googletest
GTEST_CFLAGS=-I$(GTEST_ROOT)/include -I$(GTEST_ROOT)
GTEST_LIB=$(GTEST_ROOT)/src/gtest-all.cc

GMOCK_ROOT=../googlemock
GMOCK_CFLAGS=-I$(GMOCK_ROOT)/include -I$(GMOCK_ROOT)
GMOCK_LIB=$(GMOCK_ROOT)/src/gmock-all.cc  

all:
  $(CC) test_beginner.cpp $(GTEST_LIB) $(GTEST_CFLAGS)

.PHONY: mock
mock:
  $(CC) mock_beginner.cpp $(GTEST_LIB) $(GTEST_CFLAGS) $(GMOCK_LIB) $(GMOCK_CFLAGS)
  
.PHONY: clean
clean:
  $(REMOVE) *.exe *.obj *.out