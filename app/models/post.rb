# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  post       :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Post < ActiveRecord::Base
  attr_accessible :post, :user_id

  belongs_to :user

  validates :post, :length => { :maximum => 140}
end
