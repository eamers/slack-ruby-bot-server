require_relative 'methods'

class UserGroup 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :team_id, type: String
  field :channel_id, type: String
  field :code, type: String

  include Methods
end
