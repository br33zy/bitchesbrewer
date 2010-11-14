class Brewery < ActiveRecord::Base
  has_many :brews, :dependent => :destroy
end
