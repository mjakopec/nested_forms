class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :bnr
      t.string :customer
      t.date :datump

      t.timestamps
    end
  end
end
