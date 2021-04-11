# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @categories = Category.order(created_at: :desc).last(2)
    @articles = Article.order(created_at: :desc)
  end
end
