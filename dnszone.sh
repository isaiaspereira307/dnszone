#!/bin/bash
# mostrar os outros dns de acordo com os principais
# transferencia de zona
for server in $(host -t ns $1 | cut -d " " -f4);
do
host -l  $1  $server;
done
