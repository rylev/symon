class MeaningsController < ApplicationController

  # This will be the main search action
  # def index
  # end

  def show
    meaning = Meaning.find(params.require(:id))
    @translation = meaning.translation
    @example = meaning.example
    @words = meaning.words
  end
end