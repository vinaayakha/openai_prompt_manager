module OpenaiPromptManager
  class Engine < ::Rails::Engine
    isolate_namespace OpenaiPromptManager

    initializer :append_migrations do |app|
      unless app.root.to_s.start_with?(root.to_s)
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
