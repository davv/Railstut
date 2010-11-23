class User < ActiveRecord::Base
attr_accessible :name, :email

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  :presence => true,
                    :length   => { :maximum => 50 }
  validates :mail, :presence => true,
                    :format   => { :with => email_regex }
end
