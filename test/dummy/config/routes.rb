Rails.application.routes.draw do
  mount OpenaiPromptManager::Engine => "/openai_prompt_manager"
end
