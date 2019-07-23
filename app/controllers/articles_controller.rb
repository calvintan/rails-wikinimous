class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    # find the article and update the article
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to @article
    # @task.save
    # @task.completed = true
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to article_path
  end

  def new
    @article = Article.new
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
