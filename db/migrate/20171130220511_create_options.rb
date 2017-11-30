class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.references :mid_point, foreign_key: true
      t.string :name
      t.string :directions
      t.float :lng
      t.float :lat

      t.timestamps
    end
  end
end
