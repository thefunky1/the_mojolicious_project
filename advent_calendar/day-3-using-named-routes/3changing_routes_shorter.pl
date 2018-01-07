use Mojolicious::Lite;

# If a route doesn't explicitly render something, it will check to see if a template exists for the name of the route.

get '/toy/:toy_name'  => 'toy';
get '/meet/:name'     => 'staff';
get '/'               => 'home';
app->start;

__DATA__

@@ toy.html.ep
<p>Look at this amazing <%= $toy_name %>.</p>

@@ staff.html.ep
<p>This is <%= ucfirst $name %>.</p>

@@ home.html.ep
<p>Welcome to The North Pole!</p>

<p>
  Say hi to <%= link_to 'Santa' => staff => {name => 'santa'} %>
  and <%= link_to 'Rudolph' => staff => {name => 'rudolph'} %>.
</p>

<p>
  And just wait until you see our amazing
  <%= link_to 'new puzzle' => toy => {toy_name => 'puzzle'} %>!
</p>