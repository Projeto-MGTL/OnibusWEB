require 'spec_helper'

describe "localidadelinhas/index" do
  before(:each) do
    assign(:localidadelinhas, [
      stub_model(Localidadelinha,
        :nomelocalidade => "Nomelocalidade",
        :nomelinha => "Nomelinha",
        :linha => nil,
        :localidade => nil
      ),
      stub_model(Localidadelinha,
        :nomelocalidade => "Nomelocalidade",
        :nomelinha => "Nomelinha",
        :linha => nil,
        :localidade => nil
      )
    ])
  end

  it "renders a list of localidadelinhas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomelocalidade".to_s, :count => 2
    assert_select "tr>td", :text => "Nomelinha".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
