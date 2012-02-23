class User < ActiveRecord::Base
	has_many :articles, :dependent => :destroy
	attr_accessible :name, :email, :age
	
	accepts_nested_attributes_for :articles, :allow_destroy => true, :reject_if => lambda { |a| a[:title].blank? && a[:content].blank? }
end
