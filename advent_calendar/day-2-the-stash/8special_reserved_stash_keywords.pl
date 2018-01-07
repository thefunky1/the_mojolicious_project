use Mojolicious::Lite;
get '/' => {text => 'hello 🌍 world!', format => 'txt'};
app->start;


# other special/reserved keywords
# action
# app
# cb
# controller
# data
# extends
# format -> mojolicious.org/perldoc/Mojolicious/Types
# handler
# inline
# json
# layout
# namespace
# path
# status
# template
# text
# variant
# look at http://mojolicious.org/perldoc/Mojolicious/Controller#stash