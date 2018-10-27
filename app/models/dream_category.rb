class DreamCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :dream 
end
