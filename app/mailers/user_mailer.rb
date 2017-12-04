class UserMailer < ApplicationMailer
  default from: "zbarnea.ionut@gmail.com"

  def contact_form(email, name, message)
    @message = message
    @name = name
      mail(:from => email,
          :to => 'zbarnea.ionut@gmail.com',
          :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Webdeveloper"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end

  def order_placed(user, product)
    @user = user
    @product = product
    mail(:from => 'zbarnea.ionut@gmail.com',
         :to => user.email,
         :subject => "Your order has been placed.")
  end
end