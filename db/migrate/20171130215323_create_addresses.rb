class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :directions
      t.float :lng
      t.float :lat

      t.timestamps
    end
  end
end
