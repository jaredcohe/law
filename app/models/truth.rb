class Truth < ActiveRecord::Base
  validates :body,  :presence => true,
                    :length => { :minimum => 10 }
  validates :title,  :presence => true

  has_many  :comments, :dependent => :destroy
  has_one   :author, :dependent => :destroy

  accepts_nested_attributes_for :comments, :reject_if => lambda {|p| p[:body].blank?}, :allow_destroy => true
  accepts_nested_attributes_for :author, :reject_if => lambda {|p| p[:name].blank?}, :allow_destroy => true

end
