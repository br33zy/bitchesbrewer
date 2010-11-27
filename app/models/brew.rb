class Brew < ActiveRecord::Base
  acts_as_brew_recipe
  belongs_to :brewery
  has_many :fermentables, :dependent => :destroy
  has_many :hop_additions, :dependent => :destroy

end
