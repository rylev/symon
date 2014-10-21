class Example < ActiveRecord::Base
  belongs_to :word
  belongs_to :synonym

  validates :text, presence: true
  validates :translation, presence: true
end
