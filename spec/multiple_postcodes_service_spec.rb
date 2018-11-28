describe SinglePostcodeService do

  before(:all) do
    @postcode_array = ['B601JA', 'SW155FB']
    @multiple_postcodes_service = Postcodesio.new.multiple_postcodes_service
    @multiple_postcodes_service.get_multiple_postcodes(@postcode_array)
  end

  it "should respond with a status message of 200" do
    expect(@multiple_postcodes_service.get_status_code).to eq 200
  end

  it "should have a results hash" do
    # expect(@single_postcode_service.get_results).to be_kind_of Hash
  end
end
