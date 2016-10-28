class CountUnreadReports
  def self.call
    Report.all.where(read: false).count
  end
end
