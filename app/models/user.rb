class User < ActiveRecord::Base
  has_many :dreams
  has_many :comments
  has_many :categories, through: :dreams
  has_secure_password
  validates :username, uniqueness: true
  validates :email, presence: true,
                    uniqueness: true
  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => {:minimum => 8},
                        :on => :create

end
