class PagesController < ApplicationController
	def index
		 @contador = PageSpecification.count_words("Teste teste teste teste dasd asd sad asd asd asd qw dasd asd sa")

	end
end
