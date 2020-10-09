class List < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tasks

  validates :name, presence: true
end
