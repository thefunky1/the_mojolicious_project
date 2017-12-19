#!/usr/bin/env perl
# "req" in Mojolicious::Controller and "res" in Mojolicious::Controller give
# you full access to all HTTP features and information.
use Mojolicious::Lite;

# Access request information
get '/agent' => sub {
  my $c    = shift;
  my $host = $c->req->url->to_abs->host;
  my $ua   = $c->req->headers->user_agent;
  $c->render(text => "Request by $ua reached $host.");
};

# Echo the request body and send custom header with response
post '/echo' => sub {
  my $c = shift;
  $c->res->headers->header('X-Bender' => 'Bite my shiny metal ass!');
  $c->render(data => $c->req->body);
};

app->start;