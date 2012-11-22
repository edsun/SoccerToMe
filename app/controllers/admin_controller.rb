class AdminController < ApplicationController
  
  before_filter :require_sudo
  def index
  end
end
