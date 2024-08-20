class SubcategoriesController < ApplicationController

  def index
    @subcategories = Subcategory.all
  end

  def show
    @subcategory = Subcategory.find(params[:id])
    @question = @subcategory.questions.first
  end

end
