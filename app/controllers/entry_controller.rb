class EntryController < ApplicationController
	def create
		@category = Category.find(params[:category_id])
		@entry = @category.entry.create(entry_params)
		redirect_to category_path(@category)
	end

	private
		def entry_params
			params.require(entry).permit(:name, :quantity)
		end
end