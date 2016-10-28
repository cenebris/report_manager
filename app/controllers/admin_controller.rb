class AdminController < ApplicationController
  before_action :set_categories

  def show
    @unread_count = CountUnreadReports.call
  end

  def read
    @reports = SearchReports.new.call params[:amount], params
    # SetReportsAsRead.new.call @reports
  end

  private

  def set_categories
    @categories = SetCategories.new.call
  end

end
