class SubcategoriesController < ApplicationController
  def index
    @subcategories = Subcategory.all
  end

  def show
    @subcategory = Subcategory.find(params[:id])
    @question = Question.find(@subcategory.id)
  end

private

end
