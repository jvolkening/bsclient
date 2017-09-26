# README

bsclient v0.4.1a

Last updated 2015-08-28

## DESCRIPTION

__bsclient__ is a simple FTP-like command-line client for accessing and downloading
data from an Illumina BASESPACE account.

## LATEST UPDATE

* Fixed a bug resulting in incomplete project/sample listings (set "Limit"
    query parameter to maximum, previously set to default of 10)

## PLATFORM

__bsclient__ is written in Perl. It is developed and tested in a Linux
environment and should work with most Linux distributions with the proper
modules installed. It has been tested briefly on Windows 8.1 with ActiveState
Perl and appears fully functional. It has not been tested on Max OSX, BSD, or
other systems - feedback from these users is appreciated.

## INSTALLATION

The program is a monolithic script. On Linux, installation should be as simple as
installing the necessary dependencies, copying the script to an appropriate
location and making it executable. Further details are left as an exercise for
the reader.

### Dependencies

__bsclient__ makes use of the following non-core modules. Some are fairly
common and likely to be installed on most common Linux distros, others may
need to be installed prior to using this software.

* Crypt::Blowfish
* Crypt::CBC
* File::HomeDir
* HTTP::Tiny
* JSON
* List::MoreUtils
* Term::ReadKey

In addition, if you are working in a Linux environment it is recommended to
install

* Term::ReadLine::Gnu

which will provide a better user experience (particularly tab auto-completion
of resource names/IDs).

## USAGE

See the accompanying documentation or `bsclient --help`.
