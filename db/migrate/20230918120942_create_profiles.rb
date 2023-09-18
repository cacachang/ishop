class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :phone
      t.string :address
      t.integer :gender
      t.date :birthday

      t.timestamps
    end
  end
end
