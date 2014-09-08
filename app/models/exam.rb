class Exam < ActiveRecord::Base
  has_and_belongs_to_many :ntcmarshals
  validates_presence_of :date
  validates_uniqueness_of :date
  # validate :exam_in_the_future

  # Currently not used until past exams are added.
  def exam_in_the_future
    if self.date < Date.today
      errors.add(:date, 'is in the past')
    end
  end
end
