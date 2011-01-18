class Fermentable < ActiveRecord::Base
  acts_as_fermentable
  belongs_to :brew

  def mash_out_volume_litres
    self.brew.mash_out_volume_litres
  end

  def post_boil_volume_litres
    self.brew.post_boil_volume_litres
  end

  def mash_efficiency_percentage
    self.brew.brewery.mash_efficiency_percentage
  end

  def percentage_of_total_gravity_points
    self.post_boil_volume_gravity_points * 100 / self.brew.post_boil_total_volume_gravity_points
  end

  def percentage_weight_of_total_grain_bill
    self.weight_in_kg * 100 / self.brew.weight_of_total_grain_bill_kg
  end
end
