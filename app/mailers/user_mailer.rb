class UserMailer < ApplicationMailer
  default from: "from@example.com"

    def contact_form(email, name, message)
    @message = message
    @name = name
      mail(:from => email,
          :to => 'zbarnea.ionut@gmail.com',
          :subject => "A new contact form message from #{name}")
    end
end