# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'


# csv_text = File.read(Rails.root.join('lib', 'seeds', 'drugs_a.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Drug.new
#   t.title = row['title']
#   t.description = Faker::Lorem.sentence
#   #t.save
# end
# puts "There are now #{Drug.count} rows in the drugs table"

300.times do
  p = Pharmacy.new
  p.name = Faker::Company.name
  p.address = Faker::Address.street_address
  p.city = Faker::Address.city
  p.phone = Faker::PhoneNumber.cell_phone
  p.save!

  pd = Pharmacydrug.new
  pd.drug_id = Drug.all.sample.id
  pd.pharmacy_id = Pharmacy.all.sample.id
  pd.save!

end
