require 'test_helper'

module OpenaiPromptManager
  class PromptsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @tool = Tool.create!(name: 'Test Tool')
      @prompt = @tool.prompts.create!(name: 'Hello', content: 'Hi {name}')
    end

    test 'gets index' do
      get tool_prompts_url(@tool)
      assert_response :success
    end

    test 'shows prompt' do
      get tool_prompt_url(@tool, @prompt)
      assert_response :success
    end
  end
end
