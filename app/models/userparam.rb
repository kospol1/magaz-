class Userparam < ApplicationRecord
  belongs_to :user
  
  has_attached_file :avatar,
        styles: {thumb: "100x100>", small: "150x150>"},
        default_url: "default_avatar.png" 
  validates_attachment_content_type :avatar,
        content_type: /\Aimage\/.*\Z/

end
