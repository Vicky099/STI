class VehiclesController < ApplicationController

	before_action :set_type

	def index
		@vehicles = type_class.all.order('id DESC')
	end

	def new
		@vehicle = type_class.new
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)
		if @vehicle.save
			flash[:success] = "Vehicle information added successfully."
			redirect_to vehicles_path
		else
			flash[:alert] = "Please try again OR contact Administrator."
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def vehicle_params
		params.require(type_name.underscore.to_sym).permit(:type,:price,:color)
	end

	def set_type
    @type_name = type_name
  end

	def type_name
		Vehicle.childs.include?(params[:type]) ? params[:type] : "Vehicle"
	end

	def type_class
    type_name.constantize
  end

end
