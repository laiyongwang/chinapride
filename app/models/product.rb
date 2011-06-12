class Product < ActiveRecord::Base
    has_attached_file :photo,
      :storage => :s3,
      :bucket => 'mybucket',
      :s3_credentials => {
        :access_key_id => ENV['AKIAJUN4UEWRI6OA4IQQ'],
        :secret_access_key => ENV['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']
      }
    belongs_to :category
    
    
end
