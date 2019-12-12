class ApplicationController < ActionController::Base
  before_action :set_locale

  def after_sign_in_path_for(resource_or_scope)
    current_user # goes to users/1 (if current_user = 1)
    #users_path #goes to users/index
  end

  #keep internationalization through links
  def default_url_options
    { locale: I18n.locale }
  end

  #-----------------------------------------------------------------------------
  private
  
  #set language for internationalization
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  #def set_locale
  #  I18n.locale = params[:locale] if params[:locale].present?
  #end
end
