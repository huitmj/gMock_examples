all:
  cl test_beginner.cpp ..\googletest\src\gtest-all.cc -I ..\googletest\include -I ..\googletest\

.PHONY: mock
mock:
  cl mock_beginner.cpp ..\googlemock\src\gmock-all.cc ..\googletest\src\gtest-all.cc -I ..\googletest\include -I ..\googletest\ -I ..\googlemock\include -I ..\googlemock\
  
.PHONY: clean
clean:
  del *.exe *.obj