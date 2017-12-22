#!/usr/bin/env perl
# 'put' is new here
# from terminal "./json.pl get -M PUT -c '{"message":"Hello Mojo!"}' /reverse"
use Mojolicious::Lite;

# Modify the received JSON document and return it
put '/reverse' => sub {
  my $c    = shift;
  my $hash = $c->req->json;
  $hash->{message} = reverse $hash->{message};
  $c->render(json => $hash);
};

#app->secrets(['thedogis']); # changing the passphrase or it defaults to the app moniker
# rotates password
app->secrets(['thedogis', 'thecatis', 'thebatis']);
app->start;