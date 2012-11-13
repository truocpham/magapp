class AjaxController < ApplicationController
	layout false

  def make_ajax_category
  	@categories = Category.joins(:subject).
  			select("categories.id, categories.name").
  			where("subjects.id = ?", params[:id])
  end

  def save_time
  	
  end
end
