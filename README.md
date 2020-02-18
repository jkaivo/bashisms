This is a collection of shell functions that can give any POSIX shell some
of Bash's extra functionality. The functions are split into groups of related
functionality. To install them into your shell, use the `.` command to read
the appropriate script (e.g. to load `shell.sh`, run `. ./shell.sh`).

`shell.sh`
----------
Functionality related to the operation of the shell itself.

- `suspend` - Suspends a non-login shell.
- `logout` - Exits a login shell.
- `source` - Alternative spelling of `.`.

`dirstack.sh`
-------------
Functionality for maintaining a stack of working directories.

- `pushd` - Enter a new directory and add the previous to the stack.
- `popd` - Pop the top directory from the stack and change to it.
- `dirs` - Print out the current directory stack.

`history.sh`
------------
Funcionality related to command line history.

- `history` - Lists the current command history.
