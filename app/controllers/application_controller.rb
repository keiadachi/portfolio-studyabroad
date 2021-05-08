class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  #deviseを利用する前に下記事項をよむ

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :name,
      :postal_code,
      :address,
      :phone_number])
  end
#guest/deviesにカラム追加後、上記記入すればデータ保存がされる
#データ操作の許可



end
