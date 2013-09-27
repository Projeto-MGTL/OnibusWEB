require 'spec_helper'

describe "linhaempresas/index" do
  before(:each) do
    assign(:linhaempresas, [
      stub_model(Linhaempresa,
        :nomelinha => "Nomelinha",
        :nomeempresa => "Nomeempresa",
        :linha => nil,
        :empresa => nil
      ),
      stub_model(Linhaempresa,
        :nomelinha => "Nomelinha",
        :nomeempresa => "Nomeempresa",
        :linha => nil,
        :empresa => nil
      )
    ])
  end

  it "renders a list of linhaempresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomelinha".to_s, :count => 2
    assert_select "tr>td", :text => "Nomeempresa".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
