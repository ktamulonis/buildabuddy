class HomeController < ApplicationController
  before_action :authenticate, only: 'admin'

  def authenticate
    unless ENV['HTTP_AUTH_USERNAME'].blank? or ENV['HTTP_AUTH_PASSWORD'].blank?
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['HTTP_AUTH_USERNAME'] && password == ENV['HTTP_AUTH_PASSWORD']
      end
    end
  end

  def index
  end

  def admin
  end

  def import
    if params[:file]
      Item.import(params[:file])
      redirect_to admin_path, notice: "Items Imported Successfully"
    else
      redirect_to admin_path, notice: "No File Attached"
    end
  end

end
