class UserController < ApplicationController
  def all
    render({:template => "all_user.html.erb"})
  end
  def detail
    render({:template => "user_detail.html.erb"})
  end
end
