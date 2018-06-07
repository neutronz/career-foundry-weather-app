class CreateWeather < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.string :city
      t.string :country
      t.string :units
      t.string :now
      t.timestamps
    end
  end
end
