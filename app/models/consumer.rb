class Consumer < ActiveRecord::Base
	has_many :monthly_power_consumptions, dependent: :destroy
  CONSUMER_TYPES = %W(Household Industrial)

  def full_name
    first_name +  " " + middle_name + " " +last_name
  end
end
