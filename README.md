# Learning Shell Scripts

> LinkedIn Learning Course

## Shebang (Defining the Environment)
Before writing a shell script, you need to specify the interpreter that will execute it. This is done in the first line of the script:

```sh
#!/usr/bin/env <application-name>
```

Examples:
- `#!/usr/bin/env python3`
- `#!/usr/bin/env node`
- `#!/usr/bin/env bash`

## Setting Permissions
Before executing a script, ensure it has the correct permissions:

```sh
chmod 755 script.sh
```

## Variables
- Must begin with an uppercase letter (by convention, but not mandatory)
- The right side holds the assigned value
- Case-sensitive
- Values cannot contain spaces unless enclosed in quotes

Example:
```sh
NAME="John Doe"
echo $NAME
```

## Parameters
- `$0` - The name of the script (includes the full path)
- `$1, $2, ...` - Positional parameters
- `$(date)` - Retrieves the current date

Example:
```sh
echo "Script Name: $0"
echo "First Argument: $1"
echo "Current Date: $(date)"
```

## Conditional Statements (if-else)
Example:
```sh
if [ "$COLOR" = "blue" ]; then
    echo "The color is blue"
else
    echo "The color is not blue"
fi
```

## Boolean Operators
- `-eq` : Equal
- `-ne` : Not equal
- `-lt` : Less than
- `-gt` : Greater than
- `-le` : Less than or equal to
- `-ge` : Greater than or equal to

Example:
```sh
if [ "$AGE" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are underage."
fi
```

## Interation Statemens

## While
```sh
#!/usr/bin/env bash

COUNT=1

while [ $COUNT -lt 11 ]
do
    echo "The count is $COUNT"
    COUNT=$(($COUNT + 1))
done

exit 0
```

## For

```sh
#!/usr/bin/env bash


NAME=$@

for i in $NAME
do
    echo Hello $i
done

```

You can use **break** or **continue** in your structure to do something when a condition is agreed.

> Continue