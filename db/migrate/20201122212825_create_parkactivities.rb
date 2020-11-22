class CreateParkactivities < ActiveRecord::Migration[6.0]
  def change
    create_table :parkactivities do |t|
      t.references :park, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
