class HashliosController < ApplicationController
	def index
		@hashlios = Hashlio.all
	end

	def show
		@hashlio = Hashlio.find(params[:id])
	end

	def new
		@hashlio = Hashlio.new
	end

	def create
		@hashlio = Hashlio.new(hashlio_params)
		if @hashlio.save
			redirect_to hashlios_path
		else
			render "new"
	end
end

	def edit
		@hashlio = Hashlio.find(params[:id])
	end
	
	def update
		@hashlio = Hashlio.find(params[:id])

		if @hashlio.update_attributes(hashlio_params)
			redirect_to hashlios_path, :notice => "Your hashlio has been updated"
		else
			render "edit"
		end
	end

	def destroy
		@hashlio = Hashlio.find(params[:id])
		@hashlio.destroy
		redirect_to hashlios_path
	end

	private 
	def hashlio_params
	params.require(:hashlio).permit(:ticker, :company)
end
end