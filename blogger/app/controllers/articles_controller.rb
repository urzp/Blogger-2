class ArticlesController < ApplicationController
    
    def update
        @article = Article.find(params[:id])
        @article.update(article_params)

        redirect_to article_path(@article)
    end
   
    def edit
        @article = Article.find(params[:id])
    end
    
    def destroy
        @article=Article.find(params[:id])
        @article.destroy
        redirect_to action: "index"
    end
    
    
    def create
        @article = Article.new(article_params)
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
    
private
    
    def article_params
        params.require(:article).permit(:title, :body)
    end
    
    
end
