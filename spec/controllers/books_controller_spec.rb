require 'spec_helper'

describe BooksController do

  def valid_attributes
    { 
      author: "Isaac Asimov",
      title: "Foundation"
    }
  end

  describe "GET index" do
    it "assigns all books as @books" do
      book = Book.create! valid_attributes
      get :index
      assigns(:books).should eq([book])
    end
  end

  describe "GET show" do
    it "assigns the requested book as @book" do
      book = Book.create! valid_attributes
      get :show, {:id => book.to_param}
      assigns(:book).should eq(book)
    end
  end

end
