class ArticlesController < ApplicationController

  def new #возвращает в браузер форму new.html.erb
  end
  
  def create 
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
      redirect_to @article #от двойного сабмита защита
    else
      render action: 'new'#возвращает def new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
