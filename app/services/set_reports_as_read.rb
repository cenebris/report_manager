class SetReportsAsRead
  def call reports
    begin
      reports.each {|report| report.read = true; report.try(:save)}
    rescue
      nil
    end
  end
end