module HashliosHelper
def posting
ticker = @hashlio.ticker.slice!(1..5)
url = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22#{ticker}%22)%0A%09%09&env=http%3A%2F%2Fdatatables.org%2Falltables.env&format=json"
resp = Net::HTTP.get_response(URI.parse(url))
data = resp.body
result = JSON.parse(data)
array = []
array << "Symbol: #{result["query"]["results"]["quote"]["symbol"]}"
array << "Ask: #{result["query"]["results"]["quote"]["Ask"]}"
array << "Bid: #{result["query"]["results"]["quote"]["Bid"]}"
array << "Bookvalue: #{result["query"]["results"]["quote"]["Bookvalue"]}"
array << "EaringsShare: #{result["query"]["results"]["quote"]["EarningsShare"]}"
array << "MarketCapitalization: #{result["query"]["results"]["quote"]["MarketCapitalization"]}"
array << "Change_PercentChange: #{result["query"]["results"]["quote"]["Change_PercentChange"]}"
end
end
