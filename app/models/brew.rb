class Brew < ActiveRecord::Base
  acts_as_brew_recipe
  belongs_to :brewery
  has_many :fermentables,  :dependent => :destroy
  has_many :hop_additions, :dependent => :destroy
  has_many :brew_sheets,   :dependent => :destroy

  validates :name,                       :presence => true
  validates :original_gravity,           :presence => true, :numericality => {:greater_than => 1000}
  validates :final_gravity,              :presence => true, :numericality => {:less_than => :original_gravity}
  validates :fermentation_volume_litres, :presence => true, :numericality => true
  validates :boil_time_minutes,          :presence => true, :numericality => true

  validates_associated :brewery, :fermentables, :hop_additions, :brewsheets

  def mash_efficiency_percentage
    self.brewery.mash_efficiency_percentage
  end

  def volume_lost_to_mash_litres_per_kg
    self.brewery.volume_lost_to_mash_litres_per_kg
  end
  
  def kettle_tax_litres
    self.brewery.kettle_tax_litres
  end

  def evaporation_rate_litres_per_hour
    self.brewery.evaporation_rate_litres_per_hour
  end

  def weight_of_total_grain_bill_kg
    self.fermentables.map{|fermentable| fermentable.weight_in_kg}.inject(0){|sum,item| sum + item}
  end

  def pre_boil_total_volume_gravity_points
    self.fermentables.map{|fermentable| fermentable.pre_boil_volume_gravity_points}.inject(0){|sum,item| sum + item}
  end

  def post_boil_total_volume_gravity_points
    self.fermentables.map{|fermentable| fermentable.post_boil_volume_gravity_points}.inject(0){|sum,item| sum + item}
  end

  def total_IBU
    self.hop_additions.map{|hop_addition| hop_addition.IBU}.inject(0){|sum,item| sum + item}
  end

  def has_mashed_fermentables
    self.fermentables.map{|fermentable| fermentable.mash}.include?(true)
  end

  def has_unmashed_fermentables
    self.fermentables.map{|fermentable| fermentable.mash}.include?(false)
  end
end
