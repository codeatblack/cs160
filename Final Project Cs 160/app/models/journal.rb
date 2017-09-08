class Journal < ActiveRecord::Base 
    mount_uploader :pic_name, PictureUploader
    def self.has_name?(date)
        return self.where(name: "#{date}").length != 0
    end 
end