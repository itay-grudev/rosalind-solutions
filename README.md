Rosalind Solutions in Ruby
==================

I solved some of the Rosalind tasks in my free time and here you can find their source wrapped in an automated tool that calles them and sends input.

Usage
-----
```
./rosalind <task-id> [--stdin] [filename]
```

You can either supply input through file or STDIN

* STDIN

Specify the ```--stdin``` flag

```
./rosalind <task-id> --stdin
Supply input
```

This will automatically strip whitespase at the end of the input, so feel free to add some new lines before pressing ```Ctrl + D```.

* Input from file

You just need to supply the filename as the second parameter

```
./rosalinf <task-id> filename
```
