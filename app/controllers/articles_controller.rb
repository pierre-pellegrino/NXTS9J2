class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show update destroy ]
  before_action :authenticate_user!, only: [:show, :create, :update, :new, :destroy, :edit]

  # GET /articles
  def index
    # Originally index would show every single article
          # @articles = Article.all

    # Instead we want to show only the public ones, and private ones can only be seen by their owner.
    if user_signed_in?
      @articles = Article.where("private = false OR (private = true AND user_id = #{current_user.id})")
      # Article.where("private = true").each {|a| puts a.user_id}
    else
      @articles = Article.where("private = false")
    end    

    render json: @articles
  end

  # GET /articles/1
  def show
    render json: @article
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      render json: @article, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    if has_same_user
      if @article.update(article_params)
        render json: @article
      else
        render json: @article.errors, status: :unprocessable_entity
      end
    else
      render json: {error: 'access denied'}, status: 401
    end
  end

  # DELETE /articles/1
  def destroy
    has_same_user ? @article.destroy : (render json: {error: 'access denied'}, status: 401)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :content, :private, :featured_image)
    end

    def has_same_user
      if @article.user == current_user
        return true
      end
    end
end
