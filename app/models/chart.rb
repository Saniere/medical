class Chart < ActiveRecord::Base
	belongs_to	:user
	validates	:category, :inclusion => { :in => ["통증차트","내과차트"], :message => "통증차트, 내과차트 중 하나를 선택하셔야 합니다." }
	validates	:name, :presence => { :message => "환자 이름을 입력하세요." }
	validates	:main_symptom, :presence => { :message => "주소증을 입력하세요." }
end
