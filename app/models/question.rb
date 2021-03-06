class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true
  paginates_per 10
end
