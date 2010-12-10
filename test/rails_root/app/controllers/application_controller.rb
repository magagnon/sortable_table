class ApplicationController < ActionController::Base
  protect_from_forgery

  protect_from_forgery
  include SortableTable::App::Controllers::ApplicationController
end