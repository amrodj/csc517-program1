class DummyPost < ActiveRecord::Base
  attr_accessible :content, :post, :user_id

  def self.search(search)
    if search
      find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
