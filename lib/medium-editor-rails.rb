require 'rails'
require 'medium-editor-rails/version'

module MediumEditorRails
  module Rails
    if ::Rails.version.to_s < '3.1'
      require 'medium-editor-rails/railtie'
    else
      require 'medium-editor-rails/engine'
    end
  end
end