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
  def update
    new_username = params.fetch("input_username")
    user_id = params.fetch("user_id")
    the_user = User.where({:id => user_id}).first
    the_user.username = new_username
    the_user.save
    redirect_to("/users/" + new_username)
  end
end
