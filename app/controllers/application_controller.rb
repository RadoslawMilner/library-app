class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :build_search_query

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_admin
    redirect_to root_url unless current_user.admin?
  end

  private

  def build_search_query
    @q = Book.ransack(params[:q])
  end
end
