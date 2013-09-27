require 'spec_helper'

describe "linhaempresas/show" do
  before(:each) do
    @linhaempresa = assign(:linhaempresa, stub_model(Linhaempresa,
      :nomelinha => "Nomelinha",
      :nomeempresa => "Nomeempresa",
      :linha => nil,
      :empresa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomelinha/)
    rendered.should match(/Nomeempresa/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
