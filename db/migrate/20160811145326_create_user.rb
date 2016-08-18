class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.text :bio
      t.string :dateofbirth
      t.timestamps
    end
  end
end
