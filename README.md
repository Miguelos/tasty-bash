#TASTY-BASH
Structured bashrc to allow for much easier understanding and handling of what shell changes you have set up. It is hard based on https://github.com/Knewton/bash_magic, with things removed, new directories, and stuff I use added.


##DESIGN


Instead of keeping my bashrc all in one file that becomes a giant mess, I've split the file out into a bunch of small shell scripts that the main bashrc automatically imports.  This results in the following directory setup:

~/.bashrc
~/.bash_aliases.d/
~/.bash_completion.d/
~/.bash_functions.d/
....

The base .bashrc (or can be renamed .bash_profile for those of you that use .bash_profile instead) contains only 4 things:

* a break for non interactive shells that stops any of it loading
* The addition of ~/bin to the path
* definition of the include_d function
* imports of the above directories.

Inside each directory, only files with the .sh extension will be sourced. Files stored as stubs or non used are .bkp.


##USAGE


Until I get around to creating an install program, my suggestion is that you do the following to install this:

1. Copy the contents of bashrc and append it onto the end of your .bashrc or .bash_profile
  `cat bashrc >> ~/.bashrc`
  -or-
  `cat bashrc >> ~/.bash_profile

2. Create your .d directories
  `mkdir ~/.bash_aliases.d ~/.bash_completion.d ~/.bash_functions.d`

3. Symlink any functionality you want from tasty-bash into the appropriate directory
  `cd ~/.bash_functions.d`
  `ln -s <tasty-bash project dir>/.bash_functions/eternal_history.sh`
  <repeat as needed>

4. Go through your existing .bashrc/.bash_profile and pull coherent chunks of functionality out and stuff it into new files in the appropriate directory

5. Live a happier life knowing that your old messy bashrc is now a heck of a lot easier to understand.

