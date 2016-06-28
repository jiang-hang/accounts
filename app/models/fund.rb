class Fund < ActiveRecord::Base
  after_initialize do |fund|
     fund.name ||= "普通账户"
     fund.date ||= Date.today
     fund.share ||= Fund.last.share
  end
end
