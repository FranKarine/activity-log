class Careplan < ActiveRecord::Base
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
 
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    validates :name, presence: true # To make sure the client’s name is present.
     
end
