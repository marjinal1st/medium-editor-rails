# Medium Editor for Rails

This gem integrates [Medium Editor](https://github.com/daviferreira/medium-editor) with Rails asset pipeline.

## Version

The latest version of Medium Editor bundled by this gem is [1.5.3](https://github.com/daviferreira/medium-editor/releases)

## Installation

Include **medium-editor-rails** in your Rails project's Gemfile:

```ruby
gem 'medium-editor-rails'
```

And then execute:

```bash
$ bundle install
```

## Configuration

Include javascript file in **app/assets/javascripts/application.js**:

```javascript
//= require medium-edior
```

Include stylesheet file on **app/assets/stylesheets/application.css**:

```scss
*= require medium-editor
```

You can also include themes from **themes** folder, example:

```scss
*= require medium-editor/themes/flat
```

## Using Medium Editor with Rails

You need to initialize Medium Editor with any selector of div, example:

```html
<div class="editable"></div>

<script>var editor = new MediumEditor('.editable');</script>
```

For extra options, visit this page:

https://github.com/daviferreira/medium-editor#initialization-options

## Contributing

1. Fork it ( http://github.com/<my-github-username>/medium-editor-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request