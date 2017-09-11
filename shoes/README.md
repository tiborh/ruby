# shoes for ruby

is said to be the most state of the art and easiest-to-use graphical
interface. But...

Never managed to get a satisfying integration of this toolkit into the Ruby
installation on my Raspberry Pi.

## Reasons

* the Raspbian package repository has an old version
* the downloadable and installable shoe is a standalone program and much too
  GUI centred to be useful
* gem install to plain ruby results in an unusable integration because it
  cannot run java
* gem install into jruby results in an error that shoes requires at least
  ruby 2.0 (the one from the repository is 1.9)
* the shoes versions in the gem repository is deplorable:
  * `shoes` does not work when it gets installed (a message comes up that it
    never meant to work, it is only a placeholder
  * `red_shoes` cannot be found
  * `blue_shoes` cannot be found
  * `green_shoes` fails during install
  * `purple_shoes` is the most hopeful but due to errors above cannot be
    used

## Status

As a conclusion, turning my attention to [Tk](../tk/README.md), which seems to be a much more
mature library and tool.

## Resources

The first info came from 'The Ruby Way, 3rd Edition'.

To get started with the various flavours above, the following site was useful:

* https://www.sitepoint.com/gui-applications-shoes/

For installation of the standalone shoes system:

* http://shoesrb.com/manual/Installing.html

The official tutorial, which reqires an installed and working system:

* http://shoesrb.com/walkthrough/
