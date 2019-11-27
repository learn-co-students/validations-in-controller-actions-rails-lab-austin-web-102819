class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)

    # If the @author created from author_params is valid (from Authors validations)
    if @author.valid?
      #Save @author to the database
      @author.save
      # Redirect to the #show page for @author
      redirect_to @author
    else

    #Redirect to re-render the form if the new author is invalid.
    render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
