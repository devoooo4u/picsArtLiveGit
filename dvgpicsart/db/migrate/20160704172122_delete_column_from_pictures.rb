class DeleteColumnFromPictures < ActiveRecord::Migration
  def change
  	execute "Alter table pictures drop column PhotoId"
  end
end
