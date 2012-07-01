class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.text :name
      t.has_attached_file :img
      t.timestamps
    end
  end
end
