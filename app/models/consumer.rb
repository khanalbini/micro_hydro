class Consumer < ActiveRecord::Base
	has_many :monthly_power_consumptions, dependent: :destroy
  CONSUMER_TYPES = %W(Household Industrial)
end
