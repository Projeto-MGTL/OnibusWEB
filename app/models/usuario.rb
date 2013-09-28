class Usuario < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :name, :picture, :sobrenome
end
