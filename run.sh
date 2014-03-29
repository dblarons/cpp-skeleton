# run program:
# $ bash run.sh

# run program with valgrind:
# $ bash run.sh valgrind

cd src

echo

make clean

if [ "$1" == "--test" ]
then
  make -f MakeTests
elif [ "$1" == "--test-stack" ]
then
  make -f MakeStackTests
elif [ "$1" == "--test-queue" ]
then
  make -f MakeQueueTests
else
  make
fi

echo; echo
echo ---------------

if [ "$1" == "--valgrind" ]
then
  valgrind ./output
elif [ "$1" == "--no-run" ]
then
  echo "Program not executed: --no-run flag included"
else
  ./output
fi

echo ---------------

echo; echo
make clean
rm output
cd ..
