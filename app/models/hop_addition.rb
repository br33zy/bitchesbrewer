class HopAddition < ActiveRecord::Base
  acts_as_hop_addition
  belongs_to :brew

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
