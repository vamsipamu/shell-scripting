
#!/bin/bash

# Prompt user for input
read -p "Enter a number: " num

# Initialize factorial result
fact=1

# Loop to calculate factorial
for (( i=1; i<=num; i++ ))
do
  fact=$((fact * i))
done

# Display result
echo "Factorial of $num is $fact"
