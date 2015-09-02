class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
			t.string	:pain_area
			t.string	:name
			t.text		:method
			t.text		:mean

      t.timestamps
    end
  end
end
