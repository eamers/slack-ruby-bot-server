require_relative 'methods'

class Team
  include Mongoid::Document
  include Mongoid::Timestamps

  field :team_id, type: String
  field :name, type: String
  field :domain, type: String
  field :token, type: String
  field :active, type: Boolean, default: true
  field :bot_user_id, type: String
  field :activated_user_id, type: String
  field :activated_user_access_token, type: String
  field :challenge_code, type: String

  include Methods

  def self.purge!
    # destroy teams inactive for two weeks
    Team.where(active: false, :updated_at.lte => 2.weeks.ago).each do |team|
      Mongoid.logger.info "Destroying #{team}, inactive since #{team.updated_at}, over two weeks ago."
      team.destroy
    end
  end
end
