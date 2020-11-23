class CreateMytrips < ActiveRecord::Migration[6.0]
  def change
    create_table :mytrips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :park, null: false, foreign_key: true
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
