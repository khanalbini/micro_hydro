class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :district
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :consumer_type

      t.timestamps null: false
    end
  end
end
