require "test_helper"

class DiscussionTest < ActiveSupport::TestCase
  test "validates" do
    assert_not Discussion.create(title: nil).valid?
  end
end
