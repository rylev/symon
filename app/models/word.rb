class Word < ActiveRecord::Base
  belongs_to :synonym

  validates :text, presence: true

  has_many :words, through: :meanings
end
