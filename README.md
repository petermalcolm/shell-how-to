# Shell How-to's (macOS ZSH flavor)

Recipes for file manipulation in the shell, macOS zsh flavor. Filenames describe the tasks.

## Getting Started

Most of these will work in bash (Linux or Linux container).

Git Bash on Windows is available here: https://git-scm.com/install/windows
Part of the git installation includes adding Git Bash.

## Then What?

Here is a nice tutorial and overview:
https://www.shellscript.sh/

These 👆 are generally multi-line scripts with logic.

If you want a few one-liners, try the following sequence:

First, open `Terminal` (from **Applications** > **Utilities**) on a Mac or `Git Bash` on Windows, and create a file from nothing!
```zsh
echo 'a,b,c' > /tmp/my-abc.txt
```

Then, look at it:
```zsh
cat /tmp/my-abc.txt
```

It should look like this:
```zsh
a,b,c
```
tada! 🎉

Ok, not too exciting, but now try using a pipe to the `tr` command:
```zsh
cat /tmp/my-abc.txt | tr ',' '\n'
```

You should see this:
```zsh
a
b
c
```

You can type: `man tr` for details, but in a nutshell, you "translated" each comma (`,`) to a newline (`\n`)

## Sorting and Simplifying

Create a file with letters out of order:
```zsh
echo 'd,a,c,c,b' > /tmp/my-letters.txt
```

Look at it:
```zsh
cat /tmp/my-letters.txt
```

Now, convert it to multiple lines, as before, and then sort it:
```zsh
cat /tmp/my-letters.txt | tr ',' '\n' | sort
```

You should see:
```zsh
a
b
c
c
d
```

Now get rid of that duplicated `c` with the `uniq` command:
```zsh
cat /tmp/my-letters.txt | tr ',' '\n' | sort | uniq
```

**Tip**

The up arrow on the keyboard cycles through your previous commands.

Have fun!

