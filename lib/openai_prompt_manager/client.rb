begin
  require 'openai'
rescue LoadError
  warn 'OpenAI gem not installed; OpenaiPromptManager::Client will not function.'
end

module OpenaiPromptManager
  class Client
    def initialize(openai_client: OpenAI::Client.new)
      @client = openai_client
    end

    def call(prompt, variables: {}, **options)
      messages = [{ role: 'user', content: prompt.render(variables) }]
      @client.chat(parameters: { messages: messages }.merge(options))
    end
  end
end
