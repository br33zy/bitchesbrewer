class HopAddition < ActiveRecord::Base
  acts_as_hop_addition
  belongs_to :brew

  validates :name, :presence => true
  validates :alpha_acid_percentage, :presence => true, :numericality => {:greater_than_or_equal_to => 0,:less_than_or_equal_to => 100}
  validates :weight_grams, :presence => true, :numericality => {:greater_than => 0}
  validates :boil_time_minutes, :presence => true, :numericality => {:greater_than_or_equal_to => 0}

  def fermentation_volume_litres
    self.brew.fermentation_volume_litres
  end

  def kettle_tax_litres
    self.brew.kettle_tax_litres
  end

  def original_gravity
    self.brew.original_gravity
  end
end
