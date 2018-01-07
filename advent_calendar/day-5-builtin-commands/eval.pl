# The eval command has the magic power to run one-off commands using
# your application! The application is available as app in your one-liner.

# So say you can't figure out what is wrong with your configuration, just
# ask it to dump what it thinks its configuration is

# perl myapp.pl eval -v 'app->home'
# perl myapp.pl eval -V 'app->config'

# The -v flag prints the string result of the last statement to STDOUT,
# the -V flag does the same but for data structures. Maybe you want to see why
# it can't find your templates.

# perl myapp.pl eval -V 'app->renderer->paths'

# This is especially helpful once you have database interactions setup via some
# model layer. If you want to see the result for some query, just check.

# perl myapp.pl eval -V 'app->model->users->find({name => "Joel"})'

# Though of course that will depend on how your model layer works. Or maybe you
# want to deploy your schema, or roll it back.

# perl myapp.pl eval 'app->pg->migrations->migrate'

# Or just check that the database is reachable.

# perl myapp.pl eval -V 'app->pg->db->query("SELECT NOW()")->hash'

# These last two database examples assumed that your app was using Mojo::Pg but
# similar one-liners could work for any database that your app knows about.

# There really is nothing like debugging or administering your application
# without having to copy and paste a bunch of your logic from your app to some
# script. Although if you really find yourself using the eval command for
# the same tasks often ... well that should wait until tomorrow.