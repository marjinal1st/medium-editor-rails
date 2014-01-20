module MediumEditorRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'MediumEditorRails precompile hook', :group => :all do |app|
        app.config.assets.precompile += %w()
      end
    end
  end
end