class WelcomeController < ApplicationController
  def index
    @books = Book.all
  end
end
