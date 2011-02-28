class BrewSheet < ActiveRecord::Base
  belongs_to :brew

  @brew_to_brew_sheet_fields = %w(original_gravity final_gravity fermentation_volume boil_time_minutes)

  def populate_from_parent_brew
    %w(original_gravity final_gravity fermentation_volume boil_time_minutes fermentation_volume_litres).each do |field|
      write_attribute(field.to_sym, brew.read_attribute(field.to_sym))
    end
    save
  end
end
