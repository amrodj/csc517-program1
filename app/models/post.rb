class Post < ActiveRecord::Base
  attr_accessible :post, :user_id

  belongs_to :user

  validates :post, :length => { :maximum => 140}
end
