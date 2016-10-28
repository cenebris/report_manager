require 'rails_helper'

describe 'SetReportPrice Service' do

  it 'is called with category (Awaria)' do
    if Time.now.hour.between? 9,17
      expect(SetReportPrice.new.call('Awaria')).to eq(50)
    else
      expect(SetReportPrice.new.call('Awaria')).to eq(100)
    end
  end

  it 'is called with category (Uszkodzenie)' do
    expect(SetReportPrice.new.call('Uszkodzenie')).to eq(10)
  end

  it 'is called with category (Usterka)' do
    expect(SetReportPrice.new.call('Usterka')).to eq(1)
  end
end

