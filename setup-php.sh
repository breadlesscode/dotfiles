#!/bin/bash

echoHeadline "Install different php versions"

brew install php@7.0
brew install php@7.1
brew install php@7.2
brew install php@7.4

echoHeadline "Install php extensions"

brew install imagemagick
pecl install imagick
pecl install memcached
pecl install xdebug
pecl install redis
