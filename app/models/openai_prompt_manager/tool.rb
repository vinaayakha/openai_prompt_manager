module OpenaiPromptManager
  class Tool < ApplicationRecord
    has_many :prompts, class_name: 'OpenaiPromptManager::Prompt', dependent: :destroy

    validates :name, presence: true
  end
end
