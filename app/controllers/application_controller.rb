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


  def after_sign_in_path_for(resource)
    case resource
      when Admin
        admin_tops_path
      when Guest
        root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admin
      new_admin_session_path
    else
      new_guest_session_path
    end
  end
  #ログインログアウト遷移先

end
