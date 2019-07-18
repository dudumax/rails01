class Facebuuk < ApplicationRecord
  #validates :faceboak, length: { in: 1..140 }
  
  belongs_to :user, optional: true
end
