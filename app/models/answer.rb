class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  validates :user_id, presence: true
  validates :number, presence: true
  validates_associated :user
end
