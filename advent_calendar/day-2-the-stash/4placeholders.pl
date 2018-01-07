use Mojolicious::Lite;

get ':name' => sub {
    my $c = shift;
    my $name = $c->stash('name');
    $c->stash(text => "Hello $name")
};

app->start;