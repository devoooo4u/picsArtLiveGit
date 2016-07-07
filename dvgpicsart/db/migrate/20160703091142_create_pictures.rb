class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :Title, :limit => '50', :null => false
    	t.text	 :Description
    	t.string :Path
    	t.integer :Year
    	t.date   :ShotOn
    	
     t.timestamps null: false
    end
  end
end
