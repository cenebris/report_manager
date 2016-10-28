Report.destroy_all
puts 'All Reports deleted.'

a = 123.times do
  report_category = SetCategories.new.call.sample
  report_price = SetReportPrice.new.call report_category
  report_completion_time = SetCompletionTime.new.call report_category

  Report.create(
      description: Faker::Lorem.paragraph(sentence_count=8),
      email: Faker::Internet.email,
      category: report_category,
      read: false,
      price: report_price,
      completion_time: report_completion_time
  )
end
puts "#{a} new Reports created"