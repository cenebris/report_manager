class SetCompletionTime
  def call category
    nextbusinessdays = CalculateNextBusinessDays.new.call
    case category
      when 'Awaria'
        time_to_completion = DateTime.now + 4.hours
      when 'Uszkodzenie'
        time_to_completion = DateTime.now.change(day: nextbusinessdays[0].day, month: nextbusinessdays[0].month, year: nextbusinessdays[0].year)
      when 'Usterka'
        time_to_completion = DateTime.now.change(day: nextbusinessdays[2].day, month: nextbusinessdays[2].month, year: nextbusinessdays[2].year)
    end
    time_to_completion
  end
end
