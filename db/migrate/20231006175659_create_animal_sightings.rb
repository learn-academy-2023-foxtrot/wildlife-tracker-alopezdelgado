class CreateAnimalSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :animal_sightings do |t|
      t.integer :animal_id
      t.integer :latitude
      t.integer :longitude
      t.datetime :date

      t.timestamps
    end
  end
end
