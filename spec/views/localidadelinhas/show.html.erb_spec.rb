require 'spec_helper'

describe "localidadelinhas/show" do
  before(:each) do
    @localidadelinha = assign(:localidadelinha, stub_model(Localidadelinha,
      :nomelocalidade => "Nomelocalidade",
      :nomelinha => "Nomelinha",
      :linha => nil,
      :localidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomelocalidade/)
    rendered.should match(/Nomelinha/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
