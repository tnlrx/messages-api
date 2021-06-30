require "test_helper"
include MessagesHelper

class MessagesHelperTest < ActiveSupport::TestCase
  test "validates" do
    archive_messages
  end
end