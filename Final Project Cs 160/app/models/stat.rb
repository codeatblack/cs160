class Stat < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
end
