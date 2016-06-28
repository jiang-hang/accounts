class Account < ActiveRecord::Base
  after_initialize do |acc|
     acc.date ||= Date.today
     acc.mtype ||= "资产"
  end


end
