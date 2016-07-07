class AddAutoincrementInPicAndCategory < ActiveRecord::Migration
   def self.up
    execute "ALTER TABLE pictures AUTO_INCREMENT = 3000"
    execute "ALTER TABLE categories AUTO_INCREMENT = 5000"
  end

  def self.down
    execute "ALTER TABLE pictures modify COLUMN PhotoId int(11)"
    execute "ALTER TABLE categories modify COLUMN Categ_Id int(11)"
  end
end
