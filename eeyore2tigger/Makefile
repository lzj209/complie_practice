CCFLAGS=-DDEBUG -Wall -g

compiler: eeyore.yy.o eeyore.tab.o utils.o
	g++ -Wno-register -lm -std=c++11 eeyore.yy.o eeyore.tab.o utils.o -o compiler -Idirs ${CCFLAGS}

eeyore.yy.cpp: eeyore.l utils.hpp
	flex -o eeyore.yy.cpp eeyore.l

eeyore.tab.hpp: eeyore.y utils.hpp
	bison -d -o eeyore.tab.cpp eeyore.y

eeyore.yy.o: utils.hpp eeyore.yy.cpp eeyore.tab.hpp
	g++ -Wno-register -lm -std=c++11 eeyore.yy.cpp -c -Idirs ${CCFLAGS}

eeyore.tab.o: utils.hpp eeyore.tab.hpp
	g++ -Wno-register -lm -std=c++11 eeyore.tab.cpp -c -Idirs ${CCFLAGS}

utils.o: utils.hpp utils.cpp
	g++ -Wno-register -lm -std=c++11 utils.cpp -c -Idirs ${CCFLAGS}

clean:
	rm -rf compiler *.o eeyore.yy.cpp eeyore.tab.cpp eeyore.tab.hpp *.S

.PHONY: clean
