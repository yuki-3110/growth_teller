class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :password, presence: true, on: :create

  enum gender: { man: 0, woman: 1}

  def age
    today = Date.today.strftime("%Y%m%d").to_i
    user_birthday = self.birthday
    birthday = user_birthday.strftime("%Y%m%d").to_i
    user_age = (today - birthday) / 10000
    user_age.floor(-1)
  #   if user_age < 10
  #     10
  #   else
  #     user_age.floor(-1)
  #   end
  end
end
