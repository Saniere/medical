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

pain_areas = ["두경부", "견갑상완부", "전완수부", "흉복부", "요둔부", "고관절대퇴부", "하지족관절부"]

pain_areas.each do |pain_area|
	1.upto(5) do |i|
		t = Test.new
		t.pain_area = pain_area
		t.name = "#{pain_area}테스트#{i}"
		t.method = "#{pain_area}테스트#{i}의 수행방법"
		t.mean = "#{pain_area}테스트#{i}의 의미"
		t.save
	end
end
