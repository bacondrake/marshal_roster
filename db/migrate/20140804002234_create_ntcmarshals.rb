class CreateNtcmarshals < ActiveRecord::Migration
  def change
    create_table :ntcmarshals do |t|
      t.string :name

      t.timestamps
    end
  end
end
