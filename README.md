# viper_hello
Canonical Hello World Package for Viper Programmer's Editor

## Version 0.1.1


## Abstract

This libraryis the canonical 'Hello World' package for the Viper Programmer's editor. Viper is an editor designed for 
blind and visually programmer community. It can be found here: [Viper GitHub page](https://github.com/edhowland/viper)

## Installation


### System Requirements

Viper packages require the Viper editor version 1.1 or greater. If the Viper you installd was from the master branch
on GitHub and is a version < 1.1, then you can get the code from the feature branch '1.1.0'. Switch to that branch on the main GitHub page and clone the viper
over your current viper location. Version 1.1 is backward compatible with version '1.0.0' with the additional package support.


Once Viper is installed, you can add additional packages to extend its functionality. The only requirement is to clone or unpack
the tarball in a place where Viper can find it. By default, Viper looks in this subdirectory for installed packages: 
'~/.viper/packages'. If you 'git clone  the URL on this page in that folder, the 'viper_hello' package will be installed. After doing this step, there is only
one further step to hook the packageinto the Viper runtime.


### Enabling the package in the Viper runtime

In any .viperrc file, (either ~/.viperrc or a local .viperrc), place the following line in the file:

```
# Add this line to ~/.viperrc:
package viper_hello
```

## Running the package without enabling it in the Viper runtime

You might just want to test the package without enabling it for all future Viper sessions. You can do this with the --package option to the viper command:

```
$ viper --package viper_hello
```

This will only instantiate the 'viper_hello' one time for this single Viper session.


## Purpose of this package

The 'viper_hello' Viper package is to show a sample Viper package  for those who wishcreate 
their own Viper extensions. E.g.  the following use cases are envisioned:

- Programming language: syntax checking, snippets, lint support and more
- Support for other programmer tools, code coverage, code beautifiers, etc.
- Alternate key bindings. Vim mode, Emacs mode, etc.
- File viewers. Support for HTML, Markdown, JSON and other file types.
- Misc. Viper enhancements. E.g. git diff viewers, directory browsing, etc.

## Contents of this package

The 'viper_hello' package represents the barest minimum possible Viper package. As such, it only requires
just 2 files:

```
./load_viper
./lib/viper_hello.rb
```

### load.viper

This file is the initialization loader for the 'viper_hello' package. Actually, it is the only 
required file for any Viper package. It is a standard Viper command file. Any commands placed
therein will be executed whenever the 'package pkg_name' command is given or invoked on the
viper command line with the --package option.


Normally, the usual command placed here is the 'require pkg_name' command. This will load the file './lib/pkg_name.rb'.


### The ./lib folder

Whenever a package is loaded in the Viper runtime, its full path + the 'lib' subfolder is appended to 
Ruby's $LOAD_PATH. So, for example, the Viper package could be packaged as a Ruby gem.

### The viper_hello.rb file

This file is the initialization start point for the viper_hello library. Usually, all library files are required here.
Viper packages can add new commands by adding a Proc to the Viper::Session[:commands] hash, where the key is the symbol name of the command
and the value is the Proc which is called when the command is invoked.

## Conclusion

The 'viper_hello' Viper package is avery simple package
showing the bare minimum of files to be a Viper package. You can copy this package and devise your own package. 
If you want to publish your package to the world and get instant fame and glory, then all you need to is put it on GitHub.

Send me an issue on the main GitHub Viper project (See above) and I will likely include your project in the next Viper documentation. Good Luck!

