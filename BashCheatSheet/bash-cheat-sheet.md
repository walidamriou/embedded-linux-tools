# Bash Cheat Sheet

A quick reference guide for using common Bash commands and syntax


## File and Directory Operations

- List files in a directory:
```
ls
```
- Change directory:
```
cd /path/to/directory
```
- Create a new directory:
```
mkdir new_directory
```
- Remove a file:
```
rm filename
```
- Remove a directory:
```
rm -r directory_name
```
- Copy a file:
```
cp source_file destination_file
```
- Move or rename a file:
```
mv source_file destination_file

```

Text Processing
- Display file contents:
```
cat filename
```
- Display contents with pagination:
```
less filename
```
- Search for a string in a file:
```
grep "search_string" filename
```
- Count the number of lines in a file:
```
wc -l filename
```
- Print the first N lines of a file:
```
head -n N filename
```
- Print the last N lines of a file:
```
tail -n N filename
```

Permissions
- Change file permissions:
```
chmod 755 filename
```
- Change file owner:
```
chown user:group filename
```

System Information
- Display the current user:
```
whoami
```
- Display current working directory:
```
pwd
```
- List environment variables:
```
printenv
```
- Display system information (CPU, memory, etc.):
```
uname -a
```

Networking
- Check network interfaces:
```
ifconfig
```
- Check if a port is open:
```
netstat -tuln
```
- Ping a remote server:
```
ping example.com
```
- Check DNS resolution:
```
nslookup example.com
```
- File Search
Search for a file by name:
```
find /path/to/search -name "filename"
```
- Search for a file by name (case insensitive):
```
find /path/to/search -iname "filename"
```
- Find all files containing a specific text:
```
grep -r "text" /path/to/search
```

Redirection and Pipes
- Redirect output to a file:
```
command > output.txt
```
- Append output to a file:
```
command >> output.txt
```
- Pipe output from one command to another:
```
command1 | command2
```
- Redirect both stdout and stderr to a file:
```
command &> output.txt
```

Loops and Conditionals
- For loop:
```
for i in {1..5}; do
  echo $i
done
```
- While loop:
```
while [ condition ]; do
  command
done
```
- If statement:
```
if [ condition ]; then
  command
fi
```

Miscellaneous
- Display current date and time:
```
date
```
- Create an empty file:
```
touch filename
```
- Display a command’s manual (man page):
```
man command_name
```
- Get help for a command:
```
command --help
```

