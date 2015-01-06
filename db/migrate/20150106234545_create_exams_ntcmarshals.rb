class CreateExamsNtcmarshals < ActiveRecord::Migration
  def change
    create_table :exams_ntcmarshals do |t|
      t.integer :exam_id
      t.integer :ntcmarshal_id
    end
  end
end
