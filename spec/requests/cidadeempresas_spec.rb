require 'spec_helper'

describe "Cidadeempresas" do
  describe "GET /cidadeempresas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cidadeempresas_path
      response.status.should be(200)
    end
  end
end
