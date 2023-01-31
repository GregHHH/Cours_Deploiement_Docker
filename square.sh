#!/bin/bash

square() {
	echo $(( $var * $var ))
}

for var in "$@"
do	
	square $var
done		