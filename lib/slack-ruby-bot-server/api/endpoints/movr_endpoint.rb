module SlackRubyBotServer
  module Api
    module Endpoints
      class MovrEndpoint < Grape::API
        format :json

        namespace :movr do
        desc 'Test movr connectivity'
        params do
          requires :challenge_code, type: String, desc: 'Challenge Code'
          requires :email, type: String, desc: 'Participant Email'
          requires :name, type: String, desc: 'Participant Name'
          requires :workout_name, type: String, desc: 'Workout Name'
        end
        get do
          user_group = UserGroup.where(code: params[:challenge_code]).first
          team = Team.where(team_id: user_group.team_id).first
          token = team.activated_user_access_token
          token = team.token
          client = Slack::Web::Client.new(token: token)
          #result = client.users_conversations(user: "U0Q5725HC")
          client.chat_postMessage(channel: user_group.channel_id, thread_ts: user_group.last_message_thread, text: "#{params[:name]} just completed #{params[:workout_name]}!!")
          /
          list = client.conversations_list.inspect
          puts client.bots_info.inspect
          list = client.channels_list
          puts list.keys 
          list.each {|l|
            puts l.inspect
            puts "\n\n============"
          }
          present self, with: Presenters::MovrPresenter
          /
        end
      end
      end
    end
  end
end
