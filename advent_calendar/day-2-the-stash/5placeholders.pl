use Mojolicious::Lite;

get ':name' => {name => "World!"} => sub { # can handle / as well as /Bob
    my $c = shift;
    my $name = $c->stash('name');
    $c->stash(text => "Hello $name")
};

app->start;