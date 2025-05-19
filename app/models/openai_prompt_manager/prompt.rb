module OpenaiPromptManager
  class Prompt < ApplicationRecord
    belongs_to :tool, class_name: 'OpenaiPromptManager::Tool', optional: true

    validates :name, presence: true
    validates :content, presence: true

    # Replace {variable} placeholders in the content with provided variables
    def render(variables = {})
      variables.reduce(content.dup) do |result, (key, value)|
        result.gsub("{#{key}}", value.to_s)
      end
    end
  end
end
