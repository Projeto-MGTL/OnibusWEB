require 'spec_helper'

describe "cidadeempresas/show" do
  before(:each) do
    @cidadeempresa = assign(:cidadeempresa, stub_model(Cidadeempresa,
      :nomecidade => "Nomecidade",
      :nomeempresa => "Nomeempresa",
      :empresa => nil,
      :cidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomecidade/)
    rendered.should match(/Nomeempresa/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
