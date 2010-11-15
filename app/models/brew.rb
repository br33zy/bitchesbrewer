class Brew < ActiveRecord::Base
  belongs_to :brewery
  has_many :fermentables, :dependent => :destroy
end
