class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :address
      t.text :email

      t.timestamps
    end
  end
end
