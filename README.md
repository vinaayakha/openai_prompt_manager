# OpenaiPromptManager
Manage reusable prompts and tool definitions for OpenAI integrations in a Rails
application.

## Usage
Run the engine migrations and create your prompts and tools using the provided
ActiveRecord models.

```ruby
# Example
tool = OpenaiPromptManager::Tool.create!(name: "Summarizer")
prompt = tool.prompts.create!(name: "Summary", content: "Summarize: {text}")

client = OpenaiPromptManager::Client.new
client.call(prompt, variables: { text: "Hello" }, model: "gpt-3.5-turbo")
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "openai_prompt_manager"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install openai_prompt_manager
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
