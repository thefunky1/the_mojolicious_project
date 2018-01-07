# again, not sure what is up here

get '/unsafe' => 'unsafe';

under '/protected' => sub {
  # check authentication
};

# /protected/safe  ---->
get '/safe' => 'safe';



# In Lite apps, these protected routes are literally under their 'under'. That works
# fine until you think, "now wait, that means I can't ever get back to
# the unprotected space." ... That's where group comes in.

get '/unsafe' => 'unsafe';

group {
  under '/protected' => sub {
    # check authentication
  };

  # /protected/safe
  get '/safe' => 'safe';
};

get '/another_unsafe' => ...;


# in a full app (OO):

my $r = $app->routes;
$r->get('/unsafe' => 'unsafe');

my $protected = $r->under('/protected' => sub {
  # check authentication
});

# /protected/safe
$protected->get('/safe' => 'safe');

$r->get('/another_unsafe' => ...);