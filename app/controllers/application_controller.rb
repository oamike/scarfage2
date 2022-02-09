class ApplicationController < ActionController::Base
  before_action :set_user

  private
  def set_user
    @user=User.first
    @user_items = @user.user_items if @user
    User.current = @user
  end
end
