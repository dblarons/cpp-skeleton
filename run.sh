# run program:
# $ bash run.sh

# run program with valgrind:
# $ bash run.sh valgrind

cd src

echo

make clean
make

echo; echo
echo ---------------

if [ "$1" == "valgrind" ];
then
  valgrind ./output
else
  ./output
fi

echo ---------------

echo; echo
make clean
rm output
cd ..
