import sys
import os
os.system("rm -rf observe/*")
for name in sys.argv[1:]:
    os.system("cp outputs/" + name + ".eeyore observe/")
    os.system("cp mycases/"+name+".sy observe/")