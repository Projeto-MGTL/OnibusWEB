require 'spec_helper'

describe "cidades/index" do
  before(:each) do
    assign(:cidades, [
      stub_model(Cidade,
        :nome => "Nome",
        :uf => "Uf"
      ),
      stub_model(Cidade,
        :nome => "Nome",
        :uf => "Uf"
      )
    ])
  end

  it "renders a list of cidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
  end
end
