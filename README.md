Maths
=====

Maths is a website that you can see at:

http://tlocke.github.io/maths


License
=======

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-sa/4.0/.


Building the website
====================

Building the website, pdf and epub books requires a LaTeX distribution to be
installed. On Ubuntu this can be done with:

`sudo apt-get install texlive tex4ht`

To create the `.dvi` file type:

`latex maths.tex`

To view the DVI file, do:

`xdvi maths.dvi`

To create the HTML, `cd` to the `html` directory and type:

`htlatex maths.tex`


Useful Links
============

* http://mirror.ox.ac.uk/sites/ctan.org/info/lshort/english/lshort.pdf
* http://tug.org/applications/tex4ht/mn.html
* https://help.github.com/articles/markdown-basics/
