require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Example User', email: 'user@example.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'is invalid without a name' do
    @user.name = ''
    refute @user.valid?
  end
end
