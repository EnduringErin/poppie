class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.string :competency
      t.string :european_credit
      t.integer :level

      t.timestamps null: false
    end
  end
end
