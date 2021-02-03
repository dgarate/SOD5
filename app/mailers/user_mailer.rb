class UserMailer < ApplicationMailer
    def welcome_email(user)
      mail(to: user.email, subject: "Welcome!").tap do |message|
        message.mailgun_options = {
          "tag" => ["abtest-option-a", "beta-user"],
          "tracking-opens" => true,
          "tracking-clicks" => "htmlonly"
        }
      end
    end
  end   