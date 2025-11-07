#!/bin/bash

# Ask for student's name and score
read -p "Enter your name: " name
read -p "Enter your exam score (0-100): " score

# Validate score
if ! [[ "$score" =~ ^[0-9]+$ ]] || [ "$score" -lt 0 ] || [ "$score" -gt 100 ]; then
  echo "Invalid score. Please enter a number between 0 and 100."
  exit 1
fi

# Determine grade
if [ "$score" -ge 80 ]; then
  grade="A"
elif [ "$score" -ge 70 ]; then
  grade="B"
elif [ "$score" -ge 60 ]; then
  grade="C"
elif [ "$score" -ge 50 ]; then
  grade="D"
else
  grade="F"
fi

# Display result
echo "Hello, $name! Your score is $score and your grade is $grade."

