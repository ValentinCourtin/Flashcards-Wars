class SubcategoriesController < ApplicationController

  def index
    @subcategories = Subcategory.all
  end

  def show
    @subcategory = Subcategory.find(params[:id])

    @questions = @subcategory.questions
    @question = @questions.first
  end

end
