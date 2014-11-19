class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update]
<<<<<<< HEAD
	before_filter :authenticate_user!, except: [:index, :show]
	def about
	end

	def index
		@movies = Movie.all
	end

	def recommended
		@placement = params[:placement]
		@movies = Movie.with_placement(@placement)
		render 'index'
	end

=======
	def about
	end	
	def index
		@movies = Movie.all
	end
>>>>>>> 2f4362f9cc18d8373d784910fed8064851e4cb46
	def privacy
		render 'privacy_policy'
	end

	def show
<<<<<<< HEAD
		@movie = Movie.find(params[:id])
=======
	    
>>>>>>> 2f4362f9cc18d8373d784910fed8064851e4cb46
	end

	def murder
		@movie = Movie.find(1)
		render 'show'
	end
<<<<<<< HEAD

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to @movie, notice: 'Movie was created successfully.'
		else
			render action: 'new'
		end
	end

	def edit
	end

	def update
		if @movie.update(movie_params)
			redirect_to @movie, notice: 'Movie was successfully updated.'
		else
			render action: 'edit'
		end
	end

	private
		def set_movie
			@movie = Movie.find(params[:id])
		end

		def movie_params
			movie_params = params.require(:movie).permit(:title, :description, :has_subtitles, :placement, :mpaa_rating, :release_date, :ticket_price, :runtime, :poster_image, :director, :producer, :studio, :genre_id)
		end
=======
	def new
		@movie = Movie.new
	end
	def create
		
        @movie = Movie.new(movie_params)
        if @movie.save
        	redirect_to @movie, notice: 'Movie was created successfully'
          else
          	render action: 'new'
          end
    end
    def edit
    	
    end
    def update
       
        movie_params = params.require(:movie).permit(:title, :description, 
        	:has_subtitles, :placement, :mpaa_rating, :release_date, :Ticket_price, :runtime, :poster_image )
        if @movie.update(movie_params)
        	redirect_to @movie, notice: 'movie was successfully updated.'
        else
        	render action: 'edit'
        end
    end
    private
    def set_movie
    	@movie = Movie.find(params[:id])
    end
    def movie_params
    	movie_params = params.require(:movie).permit(:title, :description, 
        	:has_subtitles, :placement, :mpaa_rating, :release_date, :Ticket_price, :runtime, :poster_image )
    end
>>>>>>> 2f4362f9cc18d8373d784910fed8064851e4cb46
end
