class UserController < ApplicationController
  def all
    render({:template => "all_user.html.erb"})
  end
  def detail
    @username = params.fetch("username")
    @user = User.where({:username => @username}).first
    render({:template => "user_detail.html.erb"})
  end
  def add
    username = params.fetch("input_username")
    new_user = User.new
    new_user.username = username
    new_user.save
    redirect_to("/users/" + username)
  end

end
