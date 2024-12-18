#!/bin/bash
grep 'ABCD' file.dat > file_filtered.dat
./program.sh < file_filtered.dat > output.dat
