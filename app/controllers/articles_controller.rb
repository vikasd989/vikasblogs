class ArticlesController < ApplicationController
  def index
  	@articles=Article.all
  end	

  def show
   @articles=Article.find(params[:id])
  end

  def new

  end

  def create
    #render plain:params[:aricles].inspect
    @articals = Article.new(artical_params)
    @articals.save
    redirect_to @articals
  end

  private 
    def artical_params 
      params.require(:articles).permit(:title, :text)
    end
end
