class CheckupController < ApplicationController
  def charts_mine
		@charts = Chart.all
  end

  def charts_category
		case params[:category]
		when "pain"
			@category = "통증차트"
		when "internal"
			@category = "내과차트"
		end
		@charts = Chart.where(category: @category)
  end

  def show
  end

  def write1
  end

  def write2
  end

  def write3
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
