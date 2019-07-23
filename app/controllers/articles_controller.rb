class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
  end

  def create
  end

  def destroy
    @articles = Article.find(params[:id])
  end

  def new
  end
end
