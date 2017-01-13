require 'bundler/gem_tasks'
require 'json'

README_VERSION_REGEXP = /bundled by this gem is \[([^\]]*)\]/
VERSION_FILE_REGEXP = /MEDIUM_EDITOR_VERSION\s.*/

namespace :bower do
  task :bump do
    bump_readme_file
    bump_version_file
  end

  desc "updates javascripts from bower package manager"
  task :update do
    puts `bower install medium-editor --save`
  end

  desc "vendors javascripts and stylesheets for rails assets pipeline"
  task :vendor do
    cp_asset "bower_components/medium-editor/dist/js/medium-editor.js"
    cp_asset "bower_components/medium-editor/dist/css/medium-editor.css"
    cp_themes
  end
end

def version_from_bower
  data = JSON.load File.read "bower_components/medium-editor/.bower.json"
  data["version"]
end

def cp_themes
  puts "vendoring themes"
  FileUtils.cp_r "bower_components/medium-editor/dist/css/themes", "vendor/assets/stylesheets/medium-editor"
end

def cp_asset filename
  base_filename = File.basename(filename)
  asset_folder = base_filename.include?(".js") ? "javascripts" : "stylesheets/medium-editor"
  puts "vendoring " + base_filename
  FileUtils.cp filename, File.join("vendor/assets/#{asset_folder}", base_filename)
end

def bump_readme_file
  latest_version = "bundled by this gem is [#{version_from_bower}]"
  lines = File.read('README.md')
  File.open('README.md', 'w'){ |f| f.puts lines.gsub(README_VERSION_REGEXP, latest_version) }
end

def bump_version_file
  version_filename = File.join("lib", "medium-editor-rails", "version.rb")
  latest_version = "MEDIUM_EDITOR_VERSION = '#{version_from_bower}'"
  lines = File.read(version_filename)
  File.open(version_filename, 'w') { |f| f.puts lines.gsub(VERSION_FILE_REGEXP, latest_version) }
end
