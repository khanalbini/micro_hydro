json.extract! consumer, :id, :first_name, :middle_name, :last_name, :dob, :gender, :email, :phone1, :phone2, :address_1, :address_2, :city, :district, :state, :zipcode, :country, :consumer_type, :created_at, :updated_at
json.url consumer_url(consumer, format: :json)