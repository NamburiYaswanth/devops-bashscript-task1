#1. Write a script that asks for two numbers and operators(+,-,*) and performs the calculation
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter operator (+, -, *): " op

case $op in
  +) result=$((num1 + num2)) ;;
  -) result=$((num1 - num2)) ;;
  \*) result=$((num1 * num2)) ;;
  *) echo "Invalid operator"; exit 1 ;;
esac

echo "Result: $result"

#2. Write a script that counts how many files are in the current directory
count=$(ls -1 | wc -l)
echo "There are $count files in the current directory."

#3.Write a script that asks for multiple names(in a loop) and greets each person, stopping when the user types "done"
while true; do
  read -p "Enter a name (type 'done' to stop): " name
  if [ "$name" = "done" ]; then
    echo "Goodbye!"
    break
  fi
  echo "Hello, $name!"
done

#4. Temperature converter: Convert celsius to fahrenheit (formula: F = C * 9/5 +32 )
read -p "Enter temperature in Celsius: " c
f=$(echo "scale=2; $c * 9 / 5 + 32")
echo "$c°C = $f°F"

