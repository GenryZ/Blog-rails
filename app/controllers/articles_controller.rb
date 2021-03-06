class ArticlesController < ApplicationController

  def index
    #@articles = Article.order(created_at: :desc) #по добавлению начиная с новых статей
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  
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
