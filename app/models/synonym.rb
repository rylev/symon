class Synonym < ActiveRecord::Base
  has_many :words

  validates :translation, uniquness: true, presence: true

  before_validation :normalize_translation

  def normalize_translation
    self.translation = translation.downcase
  end
end
