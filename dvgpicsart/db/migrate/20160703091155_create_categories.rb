class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :Title
    	t.integer :Categ_Id

      t.timestamps null: false
    end
  end
end
