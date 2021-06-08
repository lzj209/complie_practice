CCFLAGS=-DDEBUG -Wall -g

compiler: tigger.yy.o tigger.tab.o utils.o
	g++ -Wno-register -lm -std=c++11 tigger.yy.o tigger.tab.o utils.o -o compiler -Idirs ${CCFLAGS}

tigger.yy.cpp: tigger.l utils.hpp
	flex -o tigger.yy.cpp tigger.l

tigger.tab.hpp: tigger.y utils.hpp
	bison -d -o tigger.tab.cpp tigger.y

tigger.yy.o: utils.hpp tigger.yy.cpp tigger.tab.hpp
	g++ -Wno-register -lm -std=c++11 tigger.yy.cpp -c -Idirs ${CCFLAGS}

tigger.tab.o: utils.hpp tigger.tab.hpp
	g++ -Wno-register -lm -std=c++11 tigger.tab.cpp -c -Idirs ${CCFLAGS}

utils.o: utils.hpp utils.cpp
	g++ -Wno-register -lm -std=c++11 utils.cpp -c -Idirs ${CCFLAGS}

clean:
	rm -rf compiler *.o tigger.yy.cpp tigger.tab.cpp tigger.tab.hpp *.S

.PHONY: clean
