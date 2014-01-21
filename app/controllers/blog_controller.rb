class BlogController < ApplicationController
  def index
    @articles = User.where(name: request.subdomain).first.articles
  end
end
