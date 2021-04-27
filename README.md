# block-replace

Use this script to replace a block of text in a file (or multiple files). The text to search for goes in `$search` and the text to replace it with goes in `$replace`.

## Requirements

* Perl 5

## Usage

Make the script executable, then run it:

```
$ chmod a+x block-replace.pl

$ ./block-replace.pl file.html
```

You can target multiple files using shell expansion:

```
$ ./block-replace.pl *.html
```

The script will output the names of the files that have been changed.
