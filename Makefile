#pbc
mv ./3rd/pbc/Makefile ./3rd/pbc/Makefile.bak
mv ./3rd/pbc/binding/lua/Makefile ./3rd/pbc/binding/lua/Makefile.bak
cp ./3rd/pbcMakefile ./3rd/pbc/Makefile
cp ./3rd/pbcluaMakefile ./3rd/pbc/binding/lua/Makefile

cd ./3rd/pbc/ && make && cd ./binding/lua/ && make && cd ../../../../
#p.so
cd ./3rd/p/ && gcc -g -O2 -Wall -I../../skynet/3rd/lua   -fPIC --shared ./lua-p.c -o ./p.so && cd ../../

#copy
cp -f ../3rd/pbc/binding/lua/protobuf.lua ./ && cp -f ../3rd/pbc/binding/lua/protobuf.so ./
cp -f ../3rd/p/p.so ./