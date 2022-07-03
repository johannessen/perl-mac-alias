Mac::Alias
==========

This Perl module offers functions to read and write macOS Finder
[alias files](https://en.wikipedia.org/wiki/Alias_(Mac_OS)).
It reads alias data directly from alias files using  pure Perl.
As such, reading aliases works on any OS and file system.
Creating new aliases is only possible on a Mac though.

This module is effectively a replacement for [MacOSX::Alias][].


Installation
------------

Released versions of [Mac::Alias][] may be installed via CPAN:

    cpanm Mac::Alias

[![CPAN distribution](https://badge.fury.io/pl/Mac-Alias.svg)](https://badge.fury.io/pl/Mac-Alias)

To create a tarball of a development version from this
repository and install it, run the following steps.

1. `git clone https://github.com/johannessen/perl-mac-alias && cd perl-mac-alias`
1. `cpanm Dist::Zilla::PluginBundle::Author::AJNN`
1. `dzil build`
1. `cpanm <archive>.tar.gz`

Generally, you do not need Dist::Zilla to contribute patches.
You can simply clone the repository and run the test suite
using `prove` instead.

[Mac::Alias]: https://metacpan.org/release/Mac-Alias
[MacOSX::Alias]: https://metacpan.org/release/BDFOY/MacOSX-Alias-0.11
