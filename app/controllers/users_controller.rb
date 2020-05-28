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
    the_username = params.fetch("input_username")
    u = User.new
    u.username = the_username
    u.save
    render({ :template => "user_templates/add_row.html.erb" })
  end

end