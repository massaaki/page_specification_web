class PagesController < ApplicationController


	def index
		 @words_count = 0
	end

	def search
		@message = params[:message]
		@words_count = PageSpecification.count_words(@message)
		flash[:words] = "Palavras digitadas : #{@words_count}"
		flash[:message] = "Mensagem Original: #{@message}"
		if params[:word]
			@word = params[:word] if params[:word]
			@words_search_count = PageSpecification.count_world(@message, @word)			
			flash[:word] = "Busca por #{params[:word]} : #{@words_search_count}"
		end

		redirect_to root_path
	end
end
