class Upload < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :img
  has_attached_file :img, :whiny => false,
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename",
                    :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
