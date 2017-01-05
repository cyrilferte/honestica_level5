class ShiftsController < ApplicationController
    def index
     
      @shifts = Shift.all
      @workers = Worker.all
    end
    def show

    @shift = Shift.find(params[:id])
    @worker = Worker.find_by_id(@shift.worker_id)
    end

  def new
    @shift = Shift.new
     @workers = Worker.all
  end
  def create
@shift = Shift.new(shift_params)
   if @shift.save
    redirect_to root_path
   else
     render :new
   end
  end


  private

  def shift_params
    params.require(:shift).permit(:planning_id, :worker_id, :start_date)
  end
end
