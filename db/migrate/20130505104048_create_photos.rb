class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :album
      t.string :file

      t.timestamps
    end
  end
end
