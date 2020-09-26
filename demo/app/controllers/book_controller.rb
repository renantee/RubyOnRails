class BookController < ApplicationController
	layout 'standard'
	before_action :set_subjects, only: [:list, :new, :create, :edit, :update]

	def list
		@books = Book.all
		p @books.inspect
	end

	def show
		@book = Book.find(params[:id])
	end

	def new
		@book = Book.new
	end

	def book_params
		params.require(:books).permit(:title, :price, :subject_id, :description)
	end

	def create
		@book = Book.new(book_params)
		p @book.inspect
		@book.try(:next)

		if @book.save
			redirect_to :action => 'list', notice: t('.success')
		else
			render :action => 'new'
		end
	end
	
	def edit
		@book = Book.find(params[:id])
	end
	
	def book_param
		params.require(:book).permit(:title, :price, :subject_id, :description)
	end
	
	def update
		@book = Book.find(params[:id])
		
		if @book.update_attributes(book_param)
			redirect_to :action => 'show', :id => @book
		else
			render :action => 'edit'
		end
	end
	
	def delete
		Book.find(params[:id]).destroy
		redirect_to :action => 'list'
	end
	
	def show_subjects
		@subject = Subject.find(params[:id])
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_subjects
		@subjects = Subject.all
	end

end