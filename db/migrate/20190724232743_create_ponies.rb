class CreatePonies < ActiveRecord::Migration[5.2]
  def change
    create_table :ponies do |t|
      t.string :title
      t.text :description
      t.decimal :cost
      t.timestamps
    end
  end
end
