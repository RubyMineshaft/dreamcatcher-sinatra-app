class User < ActiveRecord::Base
  has_many :dreams
  has_many :comments
  has_many :categories, through: :dreams
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => {:minimum => 8}
                        
end
