class CareplansController < ApplicationController
  def index
    @careplans = Careplan.all
  end

  def new
    @careplans = Careplan.new
  end

  def create
    @careplan = Careplan.new(careplan_params)

    if @careplan.save
      redirect_to careplan_path, notice: "The careplan #{@careplan.name} has been uploaded."
    else
      render "new"
    end

  end

  def destroy
    @careplan = Careplan.find(params[:id])
    @careplan.destroy
    redirect_to careplans_path, notice:  "The careplan #{@careplan.name} has been deleted."
  end

private
  def careplan _params
    params.require(:careplan).permit(:name, :attachment)
  end
end
  