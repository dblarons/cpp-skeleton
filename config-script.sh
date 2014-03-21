#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install make -y
sudo apt-get install valgrind -y
sudo apt-get install libcurl4-gnutls-dev -y
sudo apt-get install build-essential g++ -y
sudo apt-get install clang -y

# turn on terminal colors
git config --global color.ui true
