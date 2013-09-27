require 'spec_helper'

describe "veiculos/edit" do
  before(:each) do
    @veiculo = assign(:veiculo, stub_model(Veiculo,
      :marca => "MyString",
      :modelo => "MyString",
      :placa => "MyString",
      :chassi => "MyString",
      :numerocadeiras => 1,
      :empresa => nil
    ))
  end

  it "renders the edit veiculo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", veiculo_path(@veiculo), "post" do
      assert_select "input#veiculo_marca[name=?]", "veiculo[marca]"
      assert_select "input#veiculo_modelo[name=?]", "veiculo[modelo]"
      assert_select "input#veiculo_placa[name=?]", "veiculo[placa]"
      assert_select "input#veiculo_chassi[name=?]", "veiculo[chassi]"
      assert_select "input#veiculo_numerocadeiras[name=?]", "veiculo[numerocadeiras]"
      assert_select "input#veiculo_empresa[name=?]", "veiculo[empresa]"
    end
  end
end
