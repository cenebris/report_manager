class SearchReports

  def call (amount, params)

    reports = Report.all
    reports = reports.all.where(email: params[:email]) if params[:email].present?
    reports = reports.all.where(category: params[:category]) if params[:category].present?
    reports = reports.all.where(price: params[:price]) if params[:price].present?

    if params[:read].present? && params[:read] == 'Przeczytane'
      reports = reports.all.where(read: true)
    elsif params[:read].present? && params[:read] == 'Nieprzeczytane'
      reports = reports.all.where(read: false)
    elsif params[:read].present? && params[:read] == ''
      reports
    end

    reports = reports.first(amount)
    SetReportsAsRead.new.call reports
    reports
  end
end