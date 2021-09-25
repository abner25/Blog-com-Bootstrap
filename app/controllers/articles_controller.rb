class ArticlesController < ApplicationController
  def index
    def index
      @articles = Article.all
    end
  end
end
