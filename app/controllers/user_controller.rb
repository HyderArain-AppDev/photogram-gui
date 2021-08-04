class UserController < ApplicationController
  def all
    render({:template => "all_user.html.erb"})
  end
  def detail
    @username = params.fetch("username")
    @user = User.where({:username => @username}).first
    render({:template => "user_detail.html.erb"})
  end
end
