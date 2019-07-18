class CreateFacebuuks < ActiveRecord::Migration[5.1]
  def change
    create_table :facebuuks do |t|
      t.text :faceboak

      t.timestamps
    end
  end
end
