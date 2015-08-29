# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["통증차트", "내과차트"]

categories.each do |category|
	0.upto(1) do |i|
		c = Chart.new
		c.user_id = i + 1
		c.category = category
		c.name = "#{i}님#{i} 성명"
		c.main_symptom = "#{i}증상#{i} 주소증"
		c.save
	end
end
