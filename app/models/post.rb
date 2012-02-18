class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	has_many :tests
end
