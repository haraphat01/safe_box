class User < ApplicationRecord
  has_many :events, class_name: 'Article', foreign_key: 'user_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  after_create :send_welcome_email
  private
  def send_welcome_email
    NotificationMailer.new_account(self).deliver_later
  end
end
