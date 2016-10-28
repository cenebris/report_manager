class CalculateNextBusinessDays
  def call
    nextbusinessdays = []
    nonworkingdays = %w[Saturday Sunday]
    (1..7).each {|x| t = DateTime.now + x.day; nextbusinessdays << t.to_date} # Create array with next few days
    nextbusinessdays.reject! {|day| nonworkingdays.include?(day.strftime('%A'))} # Remove weekend days from array
  end
end