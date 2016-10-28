require 'rails_helper'

RSpec.describe "Reports", type: :request do
  describe "GET /" do
    it 'returns status 200' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
