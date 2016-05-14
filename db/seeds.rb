require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'accreditedcolleges2016.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  c = College.new
  c.name = row[0]
  c.save
  puts "#{c.name} saved"
end

puts "There are now #{College.count} rows in the colleges table"