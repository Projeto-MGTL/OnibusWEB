require 'spec_helper'

describe "Localidadelinhas" do
  describe "GET /localidadelinhas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get localidadelinhas_path
      response.status.should be(200)
    end
  end
end
