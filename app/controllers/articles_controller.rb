class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    articles = Article.all
    render json: articles.to_json
  end

  def create
    puts(params[:body])
  end
end
