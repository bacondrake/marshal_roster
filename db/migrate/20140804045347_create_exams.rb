class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.date :date
      t.references :ntcmarshal, index: true

      t.timestamps
    end
  end
end
