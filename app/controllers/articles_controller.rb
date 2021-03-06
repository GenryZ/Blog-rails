class ArticlesController < ApplicationController

  def new #возвращает в браузер форму new.html.erb
  end
  
  def create 
    render plain: params[:article]
  end

end
