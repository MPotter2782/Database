class PartNameController < ApplicationController
	def create
		@part_kind = PartKind.find(params[:part_kind_id])
		@name = @part_kind.part_names.create(name_params)
		redirect_to part_kind_path(@part_kind)
	end

	private
	def name_params
		params.require(:part_names).permit(:name,:quantity)
end
