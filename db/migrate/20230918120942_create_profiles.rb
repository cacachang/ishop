class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.integer :gender
      t.date :birthday
      t.references :user

      t.timestamps
    end
  end
end
