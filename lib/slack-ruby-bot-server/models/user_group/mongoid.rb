
class UserGroup 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :team_id, type: String
  field :channel_id, type: String
  field :code, type: String
  field :last_message_thread, type: String

end
