class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :export_i18n_messages
  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end
  
  def export_i18n_messages
    SimplesIdeias::I18n.export! if Rails.env.development?
  end
end
