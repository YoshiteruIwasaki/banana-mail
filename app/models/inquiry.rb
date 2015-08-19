class Inquiry < ActiveRecord::Base
  validates :name, presence: true,length: { maximum: 100 }
  validates :zip, length: { is: 7 }
  validates :prefecture, numericality: {
            only_integer: true, greater_than_or_equal_to: 0,less_than_or_equal_to: 50
          }
  validates :address1, presence:true,length: { maximum: 250 }
  validates :email, presence:true,email: true, length: { maximum: 250 }
  validates :content, presence: true, length: { maximum: 10000 }

  validates_acceptance_of :confirm
  after_validation :check_confirm

  def check_confirm
    errors.delete(:confirm)
    self.confirm = errors.empty? ? '1' : ''
  end
end
