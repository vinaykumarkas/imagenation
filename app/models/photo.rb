=begin
This class constructs the URL for the thumbnail and large images for the results returned from the Flicker API call
=end
class Photo < OpenStruct
  def initialize(attributes)
    super(attributes.slice :id, :owner, :secret, :server, :farm, :title,
    :ispublic, :isfriend, :isfamily)
  end

  def thumbnail_url
    "https://farm#{farm}.staticflickr.com/#{server}/#{id}_#{secret}_q.jpg"
  end

  def large_url
    "https://farm#{farm}.staticflickr.com/#{server}/#{id}_#{secret}_c.jpg"
  end

end