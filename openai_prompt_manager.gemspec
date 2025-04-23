require_relative "lib/openai_prompt_manager/version"

Gem::Specification.new do |spec|
  spec.name        = "openai_prompt_manager"
  spec.version     = OpenaiPromptManager::VERSION
  spec.authors     = [ "Vinayak Iyer" ]
  spec.email       = [ "vinuyer@gmail.com" ]
  spec.homepage    = "https://github.com/vinaayakha/openai_prompt_manager"
  spec.summary     = "Manage OpenAI prompts in Rails"
  spec.description = "Manage OpenAI prompts in Rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vinaayakha/openai_prompt_manager"
  spec.metadata["changelog_uri"] = "https://github.com/vinaayakha/openai_prompt_manager/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
end
