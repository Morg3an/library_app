class BorrowingsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @borrowing = @book.borrowings.new
  end

  def create
    @book = Book.find(params[:book_id])
    @borrowing = @book.borrowings.new(borrowing_params)
    @borrowing.borrowed_at = Time.now

    if @borrowing.save
      @book.update(status: "borrowed")
      redirect_to book_path(@book), notice: "Book borrowed successfully!"
    else
      render :new
    end
  end

  def return_book
    @borrowing = Borrowing.find(params[:id])
    @borrowing.update(returned_at: Time.now)
    @borrowing.book.update(status: "available")

    redirect_to book_path(@borrowing.book), notice: "Book returned!"
  end

  private

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name)
  end
end