class Word < ActiveRecord::Base
  belongs_to :meaning

  validates :text, presence: true

  has_many :words, through: :meanings
end
