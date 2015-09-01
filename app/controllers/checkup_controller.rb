class CheckupController < ApplicationController
	before_action :login_check
	skip_before_action :login_check, :only => [:charts_mine, :charts_category, :show]

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
		@chart = Chart.find(params[:id])
  end

	def write1
	end

  def write1_complete
		c = Chart.new
		c.user_id = session[:user_id]
		c.category = params[:category]
		c.name = params[:name]
		c.main_symptom = params[:main_symptom]
		c.onset = params[:onset]
		c.provoke = params[:provoke]
		c.quality = params[:quality]
		c.radiation = params[:radiation]
		c.severe = params[:severe]
		c.time = params[:time]
		c.pain_area = params[:pain_area]
		if c.save
			flash[:alert] = "이전 단계가 정상적으로 작성되었습니다."
			redirect_to "/checkup/write2/#{c.id}"
		else
			flash[:alert] = c.errors.values.flatten.join(' ')
			redirect_to :back
		end
  end

  def write2
		@chart = Chart.find(params[:id])
  end

	def write2_complete
		#c = 
		#if c.save
		#	flash[:alert] = "2단계가 정상적으로 작성되었습니다."
		#	redirect_to "/checkup/write3/#{c.id}"
		else
		#	flash[:alert] = c.errors.values.flatten.join(' ')
		#	redirect_to :back
		#end
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
