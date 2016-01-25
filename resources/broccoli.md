# Common Broccoli Plugins

Broccoli is an incredibly powerful build tool.
It works by making small changes to folders and then outputting them either to a build directory or a development server.

By default, Broccoli will serve the "tree" that you export from your `Brocfile.js` which is done using `module.exports = `.
You can read more about this in the full [Broccoli Notes](../week-2/day-2.html).

Before you send a final tree to broccoli, you will likely want to modify your source files into their final forms using plugins.
This is a list few of the most common broccoli plugins we've used and a quick reference of how to use them.

# `broccoli-merge-trees`

This plugin takes an array of either folder names as strings or outputs from other plugins.

    var Merge = require('broccoli-merge-trees');

    module.exports = new Merge(['public', 'assets']);

This would take all of the contents of both `public` and `assets` and put it at the root of our build output.

So the following project:

    /
    |-public/
    | |-index.html
    |-assets/
    | |-app.js

Would output:

    /
    |-index.html
    |-app.js

> **NOTE** When using `broccoli-merge-tress` if two directories have the same file, you will get an error. To stop this from happening pass `{ overwrite: true }` as a second argument to the Merge constructor. This will overwrite with the last folder's version of a file:

    // Pulls in the `merge` function with NPM
    var Merge = require('broccoli-merge-trees');

    module.exports = new Merge(['public', 'assets'], {overwrite: true});

  # `broccoli-sass`

  CSS can be really tough to set up, SASS allows us to use things like variables, functions, and third party dependencies.
  Broccoli SASS allows us to compile a single source file into a final destination.

  The `broccoli-sass` plugin takes in a few different arguments:

  * An array of folders names or input trees that contain SASS needed for the app
  * An input SASS file name to start: this is relative to the first tree in the above array
  * An output CSS file name


  Here is an example `Brocfile.js`:

      var Sass = require('broccoli-sass');

      module.exports = new Sass(['sass', 'bower_components/reset-css'], 'app.scss', 'app.css');

  A project that looks like this:

      /
      |-bower_components/
      | |-reset-css/
      | | |-reset.scss
      |-sass/
      | |-app.scss

  Would output:

      /
      |-app.css

  In your `app.scss` you could now `@import 'reset'` to pull in the contents of `bower_components/reset-css/reset.scss` into your final compiled `app.css` file.

<!-- # `broccoli-funnel`

Broccoli Funnel allows you to pull only a small amount of files from a directory and send them to your final build.
This is particularly helpful for folders like `bower_components` where you only want one or two files out of tens or possibly hundreds of files.

This plugin takes two arguments: the directory or plugin output that you are funneling through, and an options object that says how you want to funnel things.
For this options object the only real property we care about is `files` which accepts an array of files that we care about.

    var funnel = require('broccoli-funnel');

    module.exports = funnel('bower_components', {files: ['jquery/dist/jquery.js']});

A project that looks like this:

    /
    |-bower_components/
    | |-jquery/
    | | |-dist/
    | | | |-jquery.js
    | | | |-jquery.min.js
    | | | |-jquery.min.js.map
    |-assets/
    | |-app.js

Would output:

    /
    |-jquery/
    | |-dist/
    | | |-jquery.js

# `broccoli-inject-livereload`

When working with livereload, you usually have to click to activate the plugin, this can be a pain.
This is where `broccoli-inject-livereload` can be a lifesaver!

This plugin acts just like a regular tree in broccoli except that it will take any HTML files and add a script to automatically activate the LiveReload extension.

Here is an example `Brocfile.js`:

    var reload = require('broccoli-inject-livereload');

    module.exports = reload('public');

A project that looks like this:

    /
    |-public/
    | |-index.html
    | |-app.css

Would output:

    /
    |-index.html
    |-app.css

# `broccoli-sourcemap-concat`

As projects grow, when working with Javascript (and even other files), you will find that you may want to break up your app into smaller files to be more manageable.
However many files can have download costs to our end users and lead to REALLY weird consequences when files load out of order or if one file fails.

For most cases, you may use `broccoli-sourcemap-concat` to replace `broccoli-funnel`.
But note that while `broccoli-funnel` outputs many files in different folders, `broccoli-sourcemap-concat` only outputs a single file.


    var concat = require('broccoli-sourcemap-concat');

    module.exports = concat('bower_components', {
        inputFiles: ['jquery/dist/jquery.js', 'underscore/underscore-min.js'],
        outputFile: 'vendor.js'});

A project that looks like this:

    /
    |-bower_components/
    | |-jquery/
    | | |-dist/
    | | | |-jquery.js
    | | | |-jquery.min.js
    | | | |-jquery.min.js.map
    | |-underscore/
    | | |-underscore.js
    | | |-underscore-min.js
    |-assets/
    | |-app.js

Would output:

    /
    |-vendor.js

And note that `broccoli-sourcemap-concat` concatinates all of the files listed in `inputFiles` array in the order listed and puts this in the `output.js` file.

# `broccoli-handlebars-precompiler`

When working with Handlebars, we have use `Handlebars.compile` to turn strings in our Javascript and HTML into working functions that will spit out our properly templated data.
However, `Handlebars.compile` is a bit of a resource hog and when sending a final production app to the browser, we could reduce the size of `handlebars.js` if we don't need `Handlebars.compile`.
Plus, having all of our templates in our HTML file is a bit weird.

By precompiling our templates in our build step we can get rid of these overheads and as a benefit, we'll also get rid of all of that boilerplate `Handlebars.compile($(selector).html())`.
The Handlebars precompiler will turn every `.hbs` file in the `srcDir` into a compiled `.js` file with the same name an put template functions on to a Object (or namespace).
The actual plugin takes to arguments: a tree to modify and then an options object with declared `srcDir` and `namespace` properties.

Here's an example `Brocfile.js`:

    var handlebars = require('broccoli-handlebars-precompiler');

    module.exports = handlebars('assets', {
      srcDir: 'templates',
      namespace: 'AppTemplates'
    });

A project that looks like this:

    /
    |-assets/
    | |-js/
    | | |-app.js
    | |-templates/
    | | |-house.hbs

Would output:

    /
    |-js/
    | |-app.js
    |-templates/
    | |-house.js

> **Note** After using `broccoli-handlebars-precompiler` you will likely want to merge all of the outputted template files using `broccoli-sourcemap-concat`.

> **WARNING** While `broccoli-handlebars-precompiler` will attempt to set properties on an object based on the `namespace` option you send to it.
> If the specified `namespace` is not set as a variable before your first template, you will see an error: `Cannot set property on undefined` -->
