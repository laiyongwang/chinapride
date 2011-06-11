class Product < ActiveRecord::Base
    has_attached_file :photo
    belongs_to :category
    
    
end
