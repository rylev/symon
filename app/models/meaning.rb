class Meaning < ActiveRecord::Base
  has_many :words

  validates :translation, uniqueness: true, presence: true
  validates :example, presence: true

  before_validation :normalize_translation

  def normalize_translation
    self.translation = translation.downcase
  end
end
