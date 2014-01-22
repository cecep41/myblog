class BlogController < ApplicationController
  before_action :is_subdomain_exist?

  def index
    @articles = @subdomain.articles.publish.order(:created_at).page(params[:page]).per(7)
  end

  private
    def is_subdomain_exist?
      @subdomain = User.where(name: request.subdomain).first

      if @subdomain.nil?
        respond_to do |format|
          format.html { redirect_to root_url(:host => request.domain, notice: 'Sorry, Blog your search is not exist, wanna make one?') }
        end
      end


    end
end
