class CreateShape < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :name
      t.integer :number_of_sides
    end
  end
end
