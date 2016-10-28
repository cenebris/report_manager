class SetReportPrice < ApplicationController
  def call category
    case category
      when 'Awaria'
        price = Time.now.hour.between?(9, 17) ? 50 : 100
      when 'Uszkodzenie'
        price = 10
      when 'Usterka'
        price = 1
    end
    price
  end
end