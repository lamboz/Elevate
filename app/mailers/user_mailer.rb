class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_ahead.subject
  #
  def order_ahead_email(restaurant, customer, meal, entree, side)
    @user = restaurant
    @customer = customer
    @meal = meal
    @entree = entree
    @side = side
    mail to: restaurant.email, subject: "Advance #order " + Time.now.strftime("%I:%M%p %A %m/%d/%y ")
  end

  def order_ahead_customer(user, restaurant, customer, meal)
    @user = user
    @restaurant = restaurant
    @customer = customer
    @meal = meal
    mail to: user.email, subject: "Advance order confirmed " + Time.now.strftime("%I:%M%p %A %m/%d/%y ")
  end
end
