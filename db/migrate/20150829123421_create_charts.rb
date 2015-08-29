class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
			t.integer	:user_id
			t.string 	:category
			t.string	:name
			t.text		:main_symptom
			t.text		:onset
			t.text		:provoke
			t.text		:quality
			t.text		:radiation
			t.integer	:severe
			t.text		:time
			t.string	:pain_area
			t.text		:diagnose
			t.text		:plan

      t.timestamps	
    end
  end
end
