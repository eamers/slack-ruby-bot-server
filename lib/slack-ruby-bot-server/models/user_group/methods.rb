module Methods
  extend ActiveSupport::Concern

  included do
    attr_accessor :server # server at runtime

    SORT_ORDERS = ['created_at', '-created_at', 'updated_at', '-updated_at'].freeze

    scope :active, -> { where(active: true) }


    def to_s
      {
        team_id: team_id,
        channel_id: channel_id,
        code: code 
      }.map do |k, v|
        "#{k}=#{v}" if v
      end.compact.join(', ')
    end
  end
end
