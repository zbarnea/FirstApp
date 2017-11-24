# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("zbarnea.ionut@gmail.com", "John", "Everything is allright.")
  end
end