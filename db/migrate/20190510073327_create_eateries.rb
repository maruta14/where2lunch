class CreateEateries < ActiveRecord::Migration[5.2]
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :address
      t.string :holiday
      t.string :time
      t.string :tel

      t.timestamps
    end
  end
end
