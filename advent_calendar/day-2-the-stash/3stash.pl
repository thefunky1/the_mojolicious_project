use Mojolicious::Lite;
get '/' => sub {
  my $c = shift;
  $c->stash(text => 'Hello 🌍 World!');
};
app->start;