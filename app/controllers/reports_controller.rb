class ReportsController < ApplicationController
  before_action :set_categories, only: [:new, :create]
  before_action :set_price_and_completion_time, only: :create

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to root_url, notice: 'Zgłoszenie zostało przesłane.'
    else
      render :new
    end
  end

  private

  def set_categories
    @categories = SetCategories.new.call
  end

  def set_price_and_completion_time
    session[:price] = SetReportPrice.new.call(report_params[:category])
    session[:completion_time] = SetCompletionTime.new.call(report_params[:category])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def report_params
    params.require(:report).permit(:description, :category, :email, :read, :price, :completion_time)
  end
end
