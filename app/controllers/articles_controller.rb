class ArticlesController < ApplicationController

#Показывает список всех статей

  def index
    #@articles = Article.order(created_at: :desc) #по добавлению начиная с новых статей
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end


#Создает новые статьи
  
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

#Редактирование статей

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

     if @article.update(article_params)
        redirect_to @article 
    else
      render action: 'edit'
    end
  end

#Удаление статьи. (Нужно улучшить. Сейчас лишь вызывает дилоговое окно в js.)

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to action: 'index'
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
