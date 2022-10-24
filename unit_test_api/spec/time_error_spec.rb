require "time_error"

RSpec.describe TimeError do
    it "returns difference in server time and pc time" do
        fake_time_error = double :requester
        allow(fake_time_error).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"82.36.49.154","datetime":"2022-10-15T10:04:09.966170+01:00","day_of_week":6,"day_of_year":288,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1665824649,"utc_datetime":"2022-10-15T09:04:09.966170+00:00","utc_offset":"+01:00","week_number":41}')
        time = Time.new(2002, 3, 13, 13, 21, 38)
        time_error = TimeError.new(fake_time_error)
        expect(time_error.error(time)).to eq 
    end
end



        

