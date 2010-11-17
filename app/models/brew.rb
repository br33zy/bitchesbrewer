class Brew < ActiveRecord::Base
  belongs_to :brewery
  has_many :fermentables, :dependent => :destroy
  has_many :hop_additions, :dependent => :destroy
end
