class Ntcmarshal < ActiveRecord::Base
  has_and_belongs_to_many :exams
  validates_presence_of :name
  validates_uniqueness_of :name

  # CSV for marshal name and exam count only
  if @marshals != nil
    @marshals.each do |m|
      File.open('marshals.csv', 'a') do |csv|
        @row = [m.name, m.exams.count]
      csv.puts @row.join(',')
      end
    end
  end

end
