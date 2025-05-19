require "test_helper"

module OpenaiPromptManager
  class ToolTest < ActiveSupport::TestCase
    test "name presence validation" do
      tool = Tool.new
      assert tool.invalid?
      assert_includes tool.errors[:name], "can't be blank"
    end
  end
end
