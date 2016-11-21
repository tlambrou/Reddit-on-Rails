require 'test_helper'

class SubTest < ActiveSupport::TestCase
  test "has proper validations" do
    @sub = Sub.new()
    assert @sub.invalid?
  end
end
