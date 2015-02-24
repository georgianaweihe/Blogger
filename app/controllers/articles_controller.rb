class ArticlesController < ApplicationController
    @articles = Article.all
    def show
        @article = Article.find(params[:id])
    end
end