class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  belongs_to :user
  validates :content, presence: true
  validates_associated :user
  validates_associated :answers
end
