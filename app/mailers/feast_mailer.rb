class FeastMailer < ApplicationMailer
  default from: "Info@Feast.com"
  def contact_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
