require 'spec_helper'

describe "cidadeempresas/index" do
  before(:each) do
    assign(:cidadeempresas, [
      stub_model(Cidadeempresa,
        :nomecidade => "Nomecidade",
        :nomeempresa => "Nomeempresa",
        :empresa => nil,
        :cidade => nil
      ),
      stub_model(Cidadeempresa,
        :nomecidade => "Nomecidade",
        :nomeempresa => "Nomeempresa",
        :empresa => nil,
        :cidade => nil
      )
    ])
  end

  it "renders a list of cidadeempresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomecidade".to_s, :count => 2
    assert_select "tr>td", :text => "Nomeempresa".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
