# viper_hello
Canonical Hello World Package for Viper Programmer's Editor

## Version 0.1.0


## Abstract

This libraryis the canonical 'Hello World' package for the Viper Programmer's editor. Viper is an editor designed for 
blind and visually programmer community. It can be found here: [Viper GitHub page](https://github.com/edhowland/viper)

## Installation

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


