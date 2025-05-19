OpenaiPromptManager::Engine.routes.draw do
  resources :tools do
    resources :prompts
  end

  root to: 'tools#index'
end
