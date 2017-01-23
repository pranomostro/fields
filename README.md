Intro
=====

These two programs emulate the unix program cut.
They provide a way to select ranges and lists of
columns of the input lines and printing them, as
text filters.

One example:

    ls -l | take 4-5

prints only the names of the file owners and groups
of the files in the current directory.

    git blame $file | omit -2

makes git blame easier to read.

The printed fields are separated by spaces, because of that
indentation with tabs is not preserved.

Tools
-----

* omit: omit the given range (or list) of fields of the input and print the rest
* take: print only a range (or list) of fields from the input

The Range
---------

A range is be defined like this (BNF):
<range>::=<num> '-' <num>
	| <num> '-'
	| '-' <num>

num is a nonnegative integer. 0 is treated as 1
(because of the way awk deals with field numbering®).
A range includes its delimiters.

The List
--------

A list is just a sequence of nonnegative non-null integers.

Installation
============

You need [9base](http://tools.suckless.org/9base) installed.
Copy this directory to 9base, add the line 'fields' to the
targets of the Makefile, then type `make install`.

License
=======

./LICENSE
