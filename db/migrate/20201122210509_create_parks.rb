class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :parkid
      t.string :url
      t.string :fullname
      t.string :parkcode
      t.string :description
      t.float :latitude
      t.float :longitude
      t.string :state
      t.string :phonenumber
      t.integer :postalcode
      t.string :city
      t.string :statecode
      t.string :addline1
      t.string :addline2
      t.string :imageurl
      t.string :weatherinfo
      t.string :designation

      t.timestamps
    end
  end
end
