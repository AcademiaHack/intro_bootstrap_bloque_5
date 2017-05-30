class AddAttachmentToPeople < ActiveRecord::Migration[5.1]
  def up
    add_attachment :people, :avatar
  end

  def down
    remove_attachment :people, :avatar
  end
end
