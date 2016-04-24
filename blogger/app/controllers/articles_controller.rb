class ArticlesController < ApplicationController
    
    def create
        @article = Article.new
        @article.title = params[:article][:title]
        @article.body= params[:article][:body]
        @article.save
        redirect_to article_path(@article)

    end
    
    def new
        @article = Article.new    
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def index
        @articles = Article.all
    end
end
