require 'json'
require 'open-uri'

		raw_data = open("http://lcboapi.com/products/").read
		lcbo_data = JSON.parse(raw_data)
		lcbo_data["result"].each do |product_hash|

		puts "<html>"
	    puts "  <head>"
	    puts "    <title>Connoisseur</title>"
	    puts "    <link rel='stylesheet' href='normalize.css' type='text/css'>"
	    puts "    <link rel='stylesheet' href='styles.css' type='text/css'>"
	    puts "  </head>"
	    puts "  <body>"

		puts "<p> Name: #{product_hash["name"]} </p>"
		puts "<p>Type: #{product_hash["primary_category"]}</p>"
		puts "<p>Package: #{product_hash["package"]}</p>"
		puts "<p>Price: #{product_hash["regular_price_in_cents"].to_f/100}</p>"
		puts "</body>"
		puts "</html>"
		end