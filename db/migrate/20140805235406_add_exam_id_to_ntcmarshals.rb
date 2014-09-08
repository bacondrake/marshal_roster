class AddExamIdToNtcmarshals < ActiveRecord::Migration
  def change
    change_table :ntcmarshals do |t|
      t.references :exam, index: true
    end
  end
end
