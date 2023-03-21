class CreateCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :office
      t.string :staff
      t.string :active
      t.string :external_id
      t.datetime :submitted_on

      t.timestamps
    end
  end
end
