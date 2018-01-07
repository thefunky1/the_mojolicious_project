#!/usr/bin/env perl

use Mojolicious::Lite;

get '/' => {text => 'Hello World'};

app->start;

# can be executed by running
# 'perl hello.pl daemon' - single-threaded, the basis of all the others
# 'morbo hello.pl' - the development server, restarts on files changes
