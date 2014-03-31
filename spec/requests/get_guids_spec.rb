require 'spec_helper'

describe "GetGuids" do
  describe "GET /get_guids" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get get_guids_path
      response.status.should be(200)
    end
  end
end
