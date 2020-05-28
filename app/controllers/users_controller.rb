class UsersController < ApplicationController

  def index
    @all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/list_of_users.html.erb" })
  end

end