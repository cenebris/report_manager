require 'rails_helper'

RSpec.describe Report, type: :model do

  describe 'When saving Report' do
    it 'is not valid without description' do
      report = Report.new(description: nil, email: Faker::Internet.email, category: SetCategories.new.call.sample)
      expect(report).to_not be_valid
    end

    it 'is not valid without email' do
      report = Report.new(description: Faker::Lorem.paragraph(sentence_count=8), email: nil, category: SetCategories.new.call.sample)
      expect(report).to_not be_valid
    end

    it 'is not valid without category' do
      report = Report.new(description: Faker::Lorem.paragraph(sentence_count=8), email: Faker::Internet.email, category: nil)
      expect(report).to_not be_valid
    end

    it 'is not valid with too short description' do
      report = Report.new(description: nil, email: Faker::Internet.email, category: SetCategories.new.call.sample)
      expect(report).to_not be_valid
    end

    it 'is valid with presence of description, email & category' do
      report = Report.new(description: Faker::Lorem.paragraph(sentence_count=8), email: Faker::Internet.email, category: SetCategories.new.call.sample)
      expect(report).to be_valid
    end



  end
end
