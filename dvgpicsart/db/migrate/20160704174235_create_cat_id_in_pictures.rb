class CreateCatIdInPictures < ActiveRecord::Migration
  def change
    execute "Alter table pictures add column category_id int"
    end
end
