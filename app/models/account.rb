class Account < ActiveRecord::Base
  attr_accessible :name, :subdomain

  validates_presence_of :name, :allow_blank => false
  validates_presence_of :subdomain, :allow_blank => false

  validates_uniqueness_of :subdomain, :allow_blank => false
end
