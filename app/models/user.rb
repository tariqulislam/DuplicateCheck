class User < ActiveRecord::Base
  attr_accessible :address, :email, :name
  validates_presence_of :address,:email,:name
  validates_uniqueness_of :email
  validates_format_of :email, :with=>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message=>"email id is not valid"
  validates_length_of :address , :maximum=>100,:allow_blank=>true
end
