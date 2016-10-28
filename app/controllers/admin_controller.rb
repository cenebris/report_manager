class AdminController < ApplicationController
  def show
    @unread_count = CountUnreadReports.call
  end

  def read
    @amount = params[:amount]
    @reports = Report.all.where(read: false).first(params[:amount])
    SetReportsAsRead.new.call @reports
  end

  def search
  end
end
