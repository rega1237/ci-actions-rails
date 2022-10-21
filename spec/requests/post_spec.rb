require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/posts'
      expect(response).to have_http_status(:success)
    end

    it 'show the correct placeholder text' do
      get '/posts'
      expect(response.body).to include('Post')
    end
  end
end