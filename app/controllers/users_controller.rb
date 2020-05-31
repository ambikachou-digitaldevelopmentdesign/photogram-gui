class UsersController < ApplicationController

  def index
    @all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/list_of_users.html.erb" })
  end

  def details
    @user = User.where({ :username => params.fetch("a_username")})[0]
    render({ :template => "user_templates/show_details.html.erb" })
  end

  def add_row
    new_user_username = params.fetch("input_username")
    new_user = User.new
    new_user.username = new_user_username
    new_user.save
    @user = new_user
    render({ :template => "user_templates/show_details.html.erb" })
  end

  def update_row
    # old_username = params.fetch("old_username")
    # new_username = params.fetch("update_username")
    # user = User.where({ :username => old_username})
    # user.username = new_username
    # user.save
    render({ :template => "user_templates/list_of_users.html.erb" })
  end

end