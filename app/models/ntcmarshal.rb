class Ntcmarshal < ActiveRecord::Base
  has_and_belongs_to_many :exams
  validates_presence_of :name
  validates_uniqueness_of :name
end
