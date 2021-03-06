require 'spec_helper'

describe "veiculolocalidades/edit" do
  before(:each) do
    @veiculolocalidade = assign(:veiculolocalidade, stub_model(Veiculolocalidade,
      :placa => "MyString",
      :data => "MyString",
      :hora => "MyString",
      :nomelinha => "MyString",
      :nomelocalidade => "MyString",
      :localidadelinha => nil,
      :veiculolinha => nil
    ))
  end

  it "renders the edit veiculolocalidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", veiculolocalidade_path(@veiculolocalidade), "post" do
      assert_select "input#veiculolocalidade_placa[name=?]", "veiculolocalidade[placa]"
      assert_select "input#veiculolocalidade_data[name=?]", "veiculolocalidade[data]"
      assert_select "input#veiculolocalidade_hora[name=?]", "veiculolocalidade[hora]"
      assert_select "input#veiculolocalidade_nomelinha[name=?]", "veiculolocalidade[nomelinha]"
      assert_select "input#veiculolocalidade_nomelocalidade[name=?]", "veiculolocalidade[nomelocalidade]"
      assert_select "input#veiculolocalidade_localidadelinha[name=?]", "veiculolocalidade[localidadelinha]"
      assert_select "input#veiculolocalidade_veiculolinha[name=?]", "veiculolocalidade[veiculolinha]"
    end
  end
end
