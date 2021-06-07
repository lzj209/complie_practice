
compiler : sysy.yy.o sysy.tab.o parse_tree.o
	g++ -Wno-register -lm -std=c++11 sysy.yy.o sysy.tab.o parse_tree.o -o compiler -g -Idirs -Wall ${CCFLAGS}

sysy.yy.cpp: sysy.l parse_tree.hpp sysy.tab.hpp
	flex -o sysy.yy.cpp sysy.l

sysy.tab.hpp: sysy.y parse_tree.hpp
	bison -d -o sysy.tab.cpp sysy.y

sysy.yy.o: parse_tree.hpp sysy.yy.cpp sysy.tab.hpp
	g++ -Wno-register -lm -std=c++11 sysy.yy.cpp -c -Idirs -Wall ${CCFLAGS}

sysy.tab.o: parse_tree.hpp sysy.tab.hpp
	g++ -Wno-register -lm -std=c++11 sysy.tab.cpp -c -Idirs -Wall ${CCFLAGS}

parse_tree.o: parse_tree.hpp parse_tree.cpp
	g++ -Wno-register -lm -std=c++11 parse_tree.cpp -c -Idirs -Wall ${CCFLAGS}

clean:
	rm -rf compiler *.o sysy.yy.cpp sysy.tab.cpp sysy.tab.hpp outputs


test_case_dir=mycases/
output_dir=outputs/
testcase=arrdefn

test: compiler
	./compiler -S -e ${test_case_dir}${testcase}.sy -o ${output_dir}${testcase}.eeyore
	python get_file.py ${testcase}

testall: compiler
	python test.py --cases open-test-cases/tigger/functional --outdir outputs --comp1 ./compiler --comp2 ../sysYCompiler/tigger2riscv/compiler

.PHONY: clean test

