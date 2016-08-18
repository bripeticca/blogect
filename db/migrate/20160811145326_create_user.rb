class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :name
      u.string :age
      u.text :bio
      u.string :dateofbirth
      u.timestamps
    end
  end
end
