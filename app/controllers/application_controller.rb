class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def test_page
    render html: 'hello world'
  end
end
