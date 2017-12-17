#!/usr/bin/env perl
use strict;
use warnings;
use Mojolicious::Lite;

get '/' => sub {
   my $c = shift;
   $c->render( text => 'Hello World!' );
};

app->start;
