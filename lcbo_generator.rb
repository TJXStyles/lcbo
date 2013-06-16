require 'json'
require 'open-uri'

raw_data = open("http://lcboapi.com/products/").read
# puts raw_data

lcbo_data = JSON.parse(raw_data)

# puts lcbo_data.class

lcbo_data["result"].each do |product_hash|
	puts "\nName: #{product_hash["name"]}"
	puts "Type: #{product_hash["primary_category"]}"
	puts "Package: #{product_hash["package"]}"
	puts "Price: #{product_hash["regular_price_in_cents"].to_f/100}\n"
end