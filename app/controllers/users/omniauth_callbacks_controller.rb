class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
# See https://github.com/omniauth/omniauth/wiki/FAQ#rails-session-is-clobbered-after-callback-on-developer-strategy
skip_before_action :verify_authenticity_token, only: :facebook


    def action_missing(provider)
    # Set up authentication/authorizations here, and distribute tasks
    # that are provider specific to other methods, leaving only tasks
    # that work across all providers in this method. 
    end


    def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

        if @user.persisted?
            sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
            set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
        else
            session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
            redirect_to new_user_registration_url
        end
    end

    def failure
        redirect_to root_path
    end

    def facebook
        if request.env["omniauth.auth"].info.email.blank?
          redirect_to "/users/auth/facebook?auth_type=rerequest&scope=email"
          return # be sure to include an return if there is code after this otherwise it will be executed
        end
    end


end
