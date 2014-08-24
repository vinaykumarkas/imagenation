=begin
 This is a test class to verify the search functionallity in Flickr class. 
=end

require 'spec_helper'

describe Flickr do
  it 'parses Flickr API json result correctly' do
    allow(Flickr).to receive(:call_api) { 
      <<-eos
      {
        "photos": {
          "page": 2, "pages": 10, "perpage": 100, "total": "8000",
          "photo": [
            {
              "id": "1", "owner": "owner1", "secret": "sec1", "server": "1234", "farm": 6,
              "title": "I am in Melbourne", "ispublic": 1, "isfriend": 0, "isfamily": 0
            },
            { "id": "2", "owner": "owner2", "secret": "sec2", "server": "5678", "farm": 3,
              "title": "I visited Melbourne", "ispublic": 1, "isfriend": 1, "isfamily": 0
            }
          ]
        }
      }
      eos
    }

    result = Flickr.search(text: 'Niagara')

    expect(result[:pagination_info]).to include(page: 2, pages: 10)
 
    photo0 = result[:photos][0]
    expect(photo0.id).to eq("1")
    expect(photo0.server).to eq("1234")

    photo1 = result[:photos][1]
    expect(photo1.owner).to eq("owner2")
    expect(photo1.farm).to eq(3)
  end
end