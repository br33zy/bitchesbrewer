class Brewery < ActiveRecord::Base
  acts_as_brewery
  has_many :brews, :dependent => :destroy
  belongs_to :user
end
