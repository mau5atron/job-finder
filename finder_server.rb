require 'sinatra'
require 'nokogiri'
require 'httparty'

get '/'do
# p params[:job]
# posts security jobs
url = "https://miami.craigslist.org/search/sof"
response = HTTParty.get url

dom = Nokogiri::HTML(response.body)
i = 0

info = dom.css('.content').css('.result-row').css('.hdrlnk').map do |a|
  "<p> #{i += 1}. #{a.text} #{a['href']}</p>"
  
   # increments job number list, #href lists url as well


end




end
