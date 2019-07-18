class AddUserstoFacebook < ActiveRecord::Migration[5.1]
  def change
    add_reference :facebuuks, :user, foreign_key: true
  end
end
