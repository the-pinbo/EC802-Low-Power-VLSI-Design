#!/bin/bash

# Define the list of replacement values
replacements=(3 4 5 6 7 8 9)

# Loop through the replacement values and replace them in the file
for r in "${replacements[@]}"
do
  # Define the replacement string with the current value
  rv="$r""v"

  # Replace the value in the file
  sed -i "s/3v/$rv/g" and4_nand4.spice

  # Run ngspice with the modified file
  ngspice -b and4_nand4.spice

  # Revert the change in the file
  sed -i "s/$rv/3v/g" and4_nand4.spice
done
