#!/usr/bin/env perl

# The "stash" in Mojolicious::Controller is used to pass data to templates,
# which can be inlined in the DATA section. A few stash values like
# template, text and data are reserved and will be used by "render" in
# Mojolicious::Controller to decide how a response should be generated.

use Mojolicious::Lite;

# Route leading to an action that renders a template
get '/foo' => sub {
   my $c = shift;
   $c->stash(one => 25);
   $c->render(template => 'magic', two => 24);
};

app->start;

__DATA__

@@ magic.html.ep
The magic numbers are <%= $one %> and <%= $two %>.