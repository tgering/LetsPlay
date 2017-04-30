require "test_helper"

describe RoomsController do
  it "should get show" do
    get rooms_show_url
    value(response).must_be :success?
  end

end
