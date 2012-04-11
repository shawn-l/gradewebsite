class HomepageController < ApplicationController
  def index
  	@news = News.order('created_at DESC').limit(8)
  end

end
