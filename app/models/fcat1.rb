class Fcat1 < ActiveRecord::Base
  has_many :flows

  def to_s
     "#{name}"
  end
end
