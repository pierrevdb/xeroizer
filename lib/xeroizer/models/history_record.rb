module Xeroizer
  module Record
    
    class HistoryRecordModel < BaseModel
        
      set_permissions :read, :write, :update
      
    end
    
    class HistoryRecord < Base
      
      #set_primary_key :item_id
      #set_possible_primary_keys :item_id, :code
      
      string  :changes
      string  :user
      string  :details

      datetime_utc :date_utc, api_name: 'dDateUTC'
       
      validates_presence_of :details
      
    end
    
  end
end
