class Flow < ActiveRecord::Base

  belongs_to :fcat1
  belongs_to :fcat2

  after_initialize do |flow|
	flow.date ||= Date.today
        flow.fcat1 ||= Fcat1.first
        flow.fcat2 ||= Fcat2.first
        flow.mtype ||= "支出"
  end
end
