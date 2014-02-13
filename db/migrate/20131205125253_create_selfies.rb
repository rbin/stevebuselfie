class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.string :pic
      t.string :email

      t.timestamps
    end
  end
end
