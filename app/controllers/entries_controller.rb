class EntriesController < ApplicationController
	def create
		@category = Category.find(params[:category_id])
		@entry = @category.entries.create(entry_params)
		redirect_to category_path(@category)
	end

	def destroy
		@category = Category.find(params[:category_id])
		@entry = @category.entries.find(params[:id])
		@entry.destroy
		redirect_to category_path(@category)
	end

	private
		def entry_params
			params.require(:entry).permit(:name, :quantity)
		end
end
