class WelcomeController < ApplicationController
  def index
    @news = News.all.limit(5)
  end
end
