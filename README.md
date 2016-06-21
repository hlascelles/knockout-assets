# Knockout Assets

[Knockout Assets](https://github.com/hlascelles/knockout-assets) is a Rails gem that generates full asset URL paths for assets in the asset pipeline.
It also supplies simple bindings for using assets in [Knockout](http://knockoutjs.com/) templates. This makes it very useful for applications that use
[Knockout](http://knockoutjs.com/) and CDNs.

## Usage

Install:

    gem 'knockout-assets'

Add the loader in yout application.html.erb:

    <%= knockout_assets %>

Then use in a template:

    <img data-bind="img: 'person.gif'">

## Why?

Asset URLs change depending on how they are served up. In production, assets coming from a CDN have a URL generated at compile time. The standard Rails way
of solving this is to use an _image_tag_, which renders the right URL. However, since Knockout templates are rendered client side, they don't have access to
this method, unless the templates are generated in the first place using erb or haml.

Using [Knockout Assets](https://github.com/hlascelles/knockout-assets) has three advantages over using a standard _image_tag_ in knockout templates.

* The knockout templates files need not be processed on the server side at all. This means that testing them (for example with [Jasmine](http://pivotal.github.io/jasmine)) becomes possible.
* The templates may be served up from a CDN using [Knockout.js-External-Template-Engine](https://github.com/ifandelse/Knockout.js-External-Template-Engine).
* The images are preloaded by default so templates render with the correct layout instantly (but this can be optionally disabled).

## Options

Include/Exclude some images using a regex

    <%= knockout_assets(include: /.*\.(png|gif|jpg|jpeg|bmp|svg)/) %>

    or

    <%= knockout_assets(exclude: /im.*\//) %>

Or use both (exclude wins).

Disable preloading images

    <%= knockout_assets(preload: false) %>

## License

MIT License.
