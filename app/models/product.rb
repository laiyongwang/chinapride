    if Rails.env == "production" 
      S3_CREDENTIALS = { :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET'], :bucket => "ourbucket"} 
    else 
      S3_CREDENTIALS = Rails.root.join("#{RAILS_ROOT}/config/s3.yml") 
    end
class Product < ActiveRecord::Base
    has_attached_file :photo,
      :storage => :s3,
      :bucket => 'mybucket',
      :s3_credentials => S3_CREDENTIALS
      
    belongs_to :category
    
    
end
