class UsersController < ApplicationController

  sortable_attributes :name, :age, :admin, :group => "groups.name",
                      :age_and_name => ["age", "users.name"]

  def index
    @users = User.find :all, :include => :group, :order => sort_order("ascending")
  end

  def show
    @users = User.find :all, :order => sort_order
  end

  def members
    @members = User.find :all, :order => sort_order
  end

end