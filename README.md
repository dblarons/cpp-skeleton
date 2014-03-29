#### How it works

You will be developing in a headless virtualbox installation of Ubuntu. This way, compilation works the same on Windows as it does on Mac--using the clang++ compiler.

This is a skeleton project, so clone this repo and make copies of it for each new project you work on.

#### Installation

##### Install Vagrant

http://www.vagrantup.com/


#### Usage

##### After vagrant has been installed

- vagrant box add base http://files.vagrantup.com/precise32.box # only do this once

- cd into the directory (renamed from skeleton)

- $ vagrant up

- $ vagrant ssh

- $ cd /vagrant  # go to shared directory

- $ bash run.sh # Run the project

Everytime you want to run your code, simply do $ sh run.sh again

When you are done working, do:

- $ vagrant destroy

to quit the virtualbox. If you forget to do this, it will eat up your RAM.

##### Helpful flags

- $ bash run.sh --valgrind  # check for memory leaks with Valgrind

- $ bash run.sh --no-run  # compile only; helpful when you just want to check for compiler warnings

- $ bash run.sh --test # test the project with a supplied test file specified in MakeTests

##### Other options

If you would like to use g++ instead of clang++, change the CXX variable in src/Makefile from clang++ to g++

##### Specific to Project 7

- $ bash run.sh --test-stack  # test the templatized stack

- $ bash run.sh --test-queue  # test the templatized queue

