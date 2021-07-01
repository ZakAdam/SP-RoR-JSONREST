class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    articles = Article.all
    render json: articles.to_json
  end

  def choose_one
    chosen = Article.find(params[:id])
    render json: chosen.to_json
  end

  def create
    puts(params[:article])
    puts(params[:article][:title])
    puts(params[:article][:body])
    if article_params
      puts("LETSGOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
    else
      puts("ANI NIEEEEEEEEEEEEEEEEEEEEEEEE :(((((((())))))))")
    end
    new_article = Article.new(title: params[:article][:title], body: params[:article][:body])
    new_article.save
  end

  private
    def article_params
      #params.require(:article).permit(:title, :body)
      control = params.require(:article).permit(:title, :body)
      puts(control)
    end
end
