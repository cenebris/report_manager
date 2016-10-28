class SetReportsAsRead
  def call reports
    reports.each {|report| report.read = true; report.try(:save)}
  end
end