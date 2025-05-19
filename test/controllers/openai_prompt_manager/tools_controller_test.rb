require 'test_helper'

module OpenaiPromptManager
  class ToolsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test 'gets index' do
      get tools_url
      assert_response :success
    end
  end
end
