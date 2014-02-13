class Note < ActiveRecord::Base
  attr_accessible :author, :body

  validates :author,:presence => true

  default_scope order('created_at DESC')
end
