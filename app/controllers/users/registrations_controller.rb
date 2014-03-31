module Users
  class RegistrationsController < Devise::RegistrationsController
    before_filter :configure_permitted_parameters, if: :devise_controller?

    def new
      super
    end

    def create
      super
    end

    def update
      super
    end

    private

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) {|u|
        u.permit(:email, :password, :password_confirmation, profile_attributes: [:username])}
    end

  end
end