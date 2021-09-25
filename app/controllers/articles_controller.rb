class ArticlesController < ApplicationController
  def index
    def index
      @articles = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
  end
end
