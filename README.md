Rosalind Solutions in Ruby
==================

I solved some of the Rosalind tasks in my free time and here you can find their source wrapped in an automated tool that calles them and sends input.

Usage
-----
### General

```
./rosalind <task-id> [--stdin] [filename]
```

### Input

You can supply input either from a file or STDIN

#### STDIN

You need to specify the ```--stdin``` flag

```
./rosalind <task-id> --stdin
Example inpuy
```
*Note: This will automatically strip whitespase at the end of the input, so feel free to add some new lines before pressing ```Ctrl + D```.*

#### Input from file

You just need to supply the filename as the second parameter

```
./rosalinf <task-id> filename
```
