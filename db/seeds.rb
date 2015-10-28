# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.delete_all

Country.create!(name: "Scotland", flag_image: "https://upload.wikimedia.org/wikipedia/commons/1/10/Flag_of_Scotland.svg", size: 30414, gdp: 216, population: 5327700, language: "English, Scots Gaelic", currency: "British pound sterling (£)", literacy_rate: 99, governing_party: "Scottish National Party")
Country.create!(name: "Russia", flag_image: "http://i.infopls.com/images/russia.gif", size: 6592812, gdp: 2553, population: 142470272 , language: "Russian (official) 96.3%, Dolgang 5.3%, German 1.5%, Chechen 1%, Tatar 3%, other 10.3% ", currency: "Russian ruble (RUR)", literacy_rate: 99, governing_party: "Vlad - the Big Cheese")
Country.create!(name: "USA", flag_image: "http://i.infopls.com/images/usa.gif", size: 3539225, gdp: 16720, population: 318892103, language: "English 82.1%, Spanish 10.7%, other Indo-European 3.8%, Asian and Pacific island 2.7%, other 0.7%", currency: "US Dollar ($)", literacy_rate: 99, governing_party: "Democratic Party")
Country.create!(name: "China", flag_image: "http://i.infopls.com/images/china.gif", size: 3600927, gdp: 13390, population: 1355692576, language: "Way too many to list", currency: "Yuan/Renminbi", literacy_rate: 95, governing_party: "Communist state")

