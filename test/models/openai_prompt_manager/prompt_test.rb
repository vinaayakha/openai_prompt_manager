require "test_helper"

module OpenaiPromptManager
  class PromptTest < ActiveSupport::TestCase
    test "renders variables" do
      tool = Tool.create!(name: "Test")
      prompt = tool.prompts.create!(name: "Greet", content: "Hello, {name}!")

      assert_equal "Hello, world!", prompt.render(name: "world")
    end
  end
end
