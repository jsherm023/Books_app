class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render "index.json.jbuilder"
  end


  def create
    @book = Book.new(
      title: params[:title],
      description: params[:description],
      price: params[:price]
    )
    @book.save
    render "show.json.jbuilder"
  end
end