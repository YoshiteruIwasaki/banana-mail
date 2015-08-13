class Inquiry < ActiveRecord::Base
  validates :name, presence: true,length: { maximum: 100 }
  validates :address1, presence:true,length: { maximum: 250 }
  validates :email, presence:true,email: true, length: { maximum: 250 }
  validates :content, presence: true, length: { maximum: 10000 }
  validates :zip, length: { is: 7 }
  validates :prefecture, numericality: {
            only_integer: true, greater_than_or_equal_to: 0,less_than_or_equal_to: 50
          }
end
