require 'rss/2.0'
require 'open-uri'

class CruiseControl

  cattr_accessor :url
  
  def builds
    results = []
    open(url) do |http|
      response = http.read
      result = RSS::Parser.parse(response, false)
      result.items.each_with_index do |item, i|
        results.push Build.new(item)
      end  
    end
    results
  end

  def url
    @@url
  end
  
end
