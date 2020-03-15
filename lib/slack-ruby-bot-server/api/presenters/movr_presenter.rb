module SlackRubyBotServer
  module Api
    module Presenters
      module MovrPresenter
        include Roar::JSON::HAL
        include Roar::Hypermedia
        include Grape::Roar::Representer

        link :self do |opts|
          "#{base_url(opts)}/movr"
        end

        property :success

        def success
          true
        end 

        def base_url(opts)
          request = Grape::Request.new(opts[:env])
          request.base_url
        end
      end
    end
  end
end
