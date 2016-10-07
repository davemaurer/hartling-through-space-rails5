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

  test 'is invalid without an email' do
    @user.email = ''
    refute @user.valid?
  end

  test 'name should not be too long' do
    @user.name = 'x' * 51
    refute @user.valid?
  end

  test 'email should not be too long' do
    @user.email = 'x' * 250 + '@x.com'
    refute @user.valid?
  end
end
