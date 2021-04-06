# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_data, only: %i[show edit update destroy]

  def index
    current_user
    @articles = Article.all.order(created_at: :desc)
  end

  def show
    @comments = @article.comments
    @category = @article.category
  end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to @category, notice: 'Article was successfully destroyed.' }
    end
  end

  private

  def set_data
    @article = Article.friendly.find(params[:id])
    @category = @article.category
  end

  def article_params
    params.require(:article).permit(:name, :content, :category_id)
  end
end
