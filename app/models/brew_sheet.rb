class BrewSheet < ActiveRecord::Base
  belongs_to :brew

  def populate_from_parent_brew
    %w(
        original_gravity
        final_gravity
        fermentation_volume
        boil_time_minutes
        fermentation_volume_litres
        mash_temperature_celsius
        notes
    ).each do |field|
      write_attribute(field.to_sym, brew.read_attribute(field.to_sym))
    end
    save
  end
end
