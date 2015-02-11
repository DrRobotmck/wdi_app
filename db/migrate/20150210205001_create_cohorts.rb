class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
    	t.string :name
    	t.string :city
    	t.string :campus
    	t.integer :number

      t.timestamps
    end
  end
end
