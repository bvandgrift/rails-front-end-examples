class BooksController < ApplicationController
  def index
    @books = Book.all

    respond_to do |wants|
      wants.html { render } # not actually necessary
      wants.json { render json: @books }
    end
  end

  def show
    @book = Book.find(params[:id])

    respond_to do |wants|
      wants.html { render }
      wants.json { render json: @book }
    end
  end

end
