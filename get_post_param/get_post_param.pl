#!/usr/bin/env perl
use strict;
use warnings;
use Mojolicious::Lite;

# /foo?user=sri e.g. http://127.0.0.1:3000/foo?user=Bob
get '/foo' => sub {
    my $c       = shift;
    my $user    = $c->param('user');
    $c->render(text => "Hello $user!");
};

app->start;