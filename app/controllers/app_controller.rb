class AppController < ApplicationController

  before_filter :require_instance


  def widget
    value = Setting.find_or_create_by(key: @key).value || '{}'
    @settings = value.html_safe
  end

  def settings
    value = Setting.find_or_create_by(key: @key).value || '{}'
    @settings = value.html_safe
  end

  def settingsupdate
    @settings = Setting.find(@key)
    @settings.update_attributes(:value => params[:settings])

    render :json => {}, :status => 200
  end

  private

  def require_instance
    @instance = params[:parsed_instance]
  end



end
