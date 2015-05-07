require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    it "routes get /users to show" do
    should route(:get, '/users').to(action: :show)
  end
end