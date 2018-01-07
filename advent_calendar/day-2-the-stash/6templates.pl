use Mojolicious::Lite;
get '/:name' => {name => '🌍 world!'} => sub {
  my $c = shift;
  $c->stash(inline => 'hello <%= $name %>');
};
app->start;