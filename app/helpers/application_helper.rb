module ApplicationHelper
  
  def show_categories
    @categories = Category.all
  end
end
