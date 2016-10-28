require 'rails_helper'

describe 'SetCategories Service' do
  it 'is called' do
    a = SetCategories.new.call
    expect(a).to eq(%w[Awaria Uszkodzenie Usterka])
  end

end

