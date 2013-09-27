require 'spec_helper'

describe "linhas/index" do
  before(:each) do
    assign(:linhas, [
      stub_model(Linha,
        :numero => 1,
        :nome => "Nome",
        :horario => "Horario"
      ),
      stub_model(Linha,
        :numero => 1,
        :nome => "Nome",
        :horario => "Horario"
      )
    ])
  end

  it "renders a list of linhas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
  end
end
