### Changelog

#### 0.11.2 (Next)

* Your contribution here.

#### 0.11.1 (2019/5/17)

* [#104](https://github.com/slack-ruby/slack-ruby-bot-server/pull/104): Lock async-websocket at a compatible 0.8.0 version - [@dblock](https://github.com/dblock).

#### 0.11.0 (2019/4/12)

* [#101](https://github.com/slack-ruby/slack-ruby-bot-server/pull/101): Removed legacy migrations, including `SLACK_API_TOKEN`, team `name`, `team_id` and `active` - [@dblock](https://github.com/dblock).
* [#98](https://github.com/slack-ruby/slack-ruby-bot-server/pull/98): Removed `unicorn` from gem dependencies - [@dblock](https://github.com/dblock).
* [#90](https://github.com/slack-ruby/slack-ruby-bot-server/pull/90): Update ActiveRecord sample app to support ENV variables in `postgresql.yml` - [@ashkan18](https://github.com/ashkan18).

#### 0.10.0 (2019/3/23)

* [#97](https://github.com/slack-ruby/slack-ruby-bot-server/pull/97): Added `Config#service_class` to override the `SlackRubyBotServer::Service.instance` singleton - [@dblock](https://github.com/dblock).
* [#96](https://github.com/slack-ruby/slack-ruby-bot-server/pull/96): Added `Team#bot_user_id`, `activated_user_id` and `activated_user_access_token` - [@dblock](https://github.com/dblock).
* [#95](https://github.com/slack-ruby/slack-ruby-bot-server/pull/95): Expose the optional `state` parameter that is returned from the Add to Slack button - [@aok-solutions](https://github.com/aok-solutions).

#### 0.9.0 (2019/2/25)

* [#93](https://github.com/slack-ruby/slack-ruby-bot-server/pull/93): Removed ping worker in favor of slack-ruby-client lower level ping - [@dblock](https://github.com/dblock).

#### 0.8.3 (2019/1/17)

* [#88](https://github.com/slack-ruby/slack-ruby-bot-server/issues/88): Fix: compatibility with Grape 1.2.x - [@dblock](https://github.com/dblock).

#### 0.8.2 (2018/10/11)

* [#80](https://github.com/slack-ruby/slack-ruby-bot-server/pull/80): Fix: closed stream when closing connection in ping worker - [@dblock](https://github.com/dblock).

#### 0.8.1 (2018/9/20)

* [#79](https://github.com/slack-ruby/slack-ruby-bot-server/pull/79): Fix: ping worker terminates on a failed restart - [@dblock](https://github.com/dblock).

#### 0.8.0 (2018/9/8)

* [#75](https://github.com/slack-ruby/slack-ruby-bot-server/pull/75): Default to `async-websocket` instead of `celluloid-io` - [@dblock](https://github.com/dblock).
* [#76](https://github.com/slack-ruby/slack-ruby-bot-server/pull/76): Adjust wait time on restart on Slack::Web::Api::Errors::TooManyRequestsError - [@dblock](https://github.com/dblock).

#### 0.7.0 (2018/8/22)

* [#60](https://github.com/slack-ruby/slack-ruby-bot-server/pull/60): Log caught Standard::Error backtrace at debug-level - [@alexagranov](https://github.com/alexagranov).
* [#65](https://github.com/slack-ruby/slack-ruby-bot-server/pull/65): Updated Capybara and selenium-webdriver - [@dblock](https://github.com/dblock).
* [#67](https://github.com/slack-ruby/slack-ruby-bot-server/pull/67): Only load the OTR::ActiveRecord::ConnectionManagement middleware when the OTR module is included. This module isn't needed when using Rails - [@darbyfrey](https://github.com/darbyfrey).
* [#74](https://github.com/slack-ruby/slack-ruby-bot-server/pull/74): Added ping worker, will restart offline bots - [@dblock](https://github.com/dblock).

#### 0.6.1 (2017/3/29)

* [#54](https://github.com/slack-ruby/slack-ruby-bot-server/pull/54): Removing one more Mongoid dependency when rescuing from _invoke - [@alexagranov](https://github.com/alexagranov).
* [#53](https://github.com/slack-ruby/slack-ruby-bot-server/pull/53): No need for `otr-activerecord` if using activerecord under Rails - [@alexagranov](https://github.com/alexagranov).

#### 0.6.0 (2017/3/12)

* [#38](https://github.com/slack-ruby/slack-ruby-bot-server/issues/7): Added ActiveRecord support - [@zachfeldman](https://github.com/zachfeldman), [@spencerldixon](https://github.com/spencerldixon), [@dblock](https://github.com/dblock).
* [#45](https://github.com/slack-ruby/slack-ruby-bot-server/pull/45): Updated grape-roar to 0.4.0 - [@swalberg](https://github.com/swalberg).
* [#49](https://github.com/slack-ruby/slack-ruby-bot-server/pull/49): Run tests in the sample apps part of CI - [@dblock](https://github.com/dblock).

#### 0.5.0 (2017/2/9)

* [#43](https://github.com/slack-ruby/slack-ruby-bot-server/pull/43): Fix: `cannot load kaminari/grape` - [@dblock](https://github.com/dblock).
* [#43](https://github.com/slack-ruby/slack-ruby-bot-server/pull/43): Fix: `undefined method '[]' for nil:NilClass` in APIs - [@dblock](https://github.com/dblock).
* [#28](https://github.com/slack-ruby/slack-ruby-bot-server/pull/28): Use slack-ruby-danger gem - [@dblock](https://github.com/dblock).
* [#31](https://github.com/slack-ruby/slack-ruby-bot-server/pull/31): Adds MONGODB_URI as environment variable for MongoDB - [@corprew](https://github.com/corprew).

#### 0.4.0 (2016/8/29)

* [#25](https://github.com/slack-ruby/slack-ruby-bot-server/pull/25): Added [danger](http://danger.systems), PR linting - [@dblock](https://github.com/dblock).
* The `reset` and `resetting` callbacks have been removed - [@dblock](https://github.com/dblock).
* Callbacks receive `team` and `error`, but no longer `server` - [@dblock](https://github.com/dblock).
* [#23](https://github.com/slack-ruby/slack-ruby-bot-server/issues/23): Fix: server-side removal of bot doesn't deactivate it - [@dblock](https://github.com/dblock).

#### 0.3.1 (2016/7/10)

* [#22](https://github.com/slack-ruby/slack-ruby-bot-server/issues/22): Subclassing `SlackRubyBotServer::App` creates an `.instance` of child class - [@dblock](https://github.com/dblock).

#### 0.3.0 (2016/7/4)

* Specify the server class via `SlackRubyBotServer.configure`, default is `SlackRubyBotServer::Server` - [@dblock](https://github.com/dblock).
* Added service management lifecycle callbacks when a new team is registered, deactivated, etc - [@dblock](https://github.com/dblock).

#### 0.2.0 (2016/6/21)

* Relaxed dependency versions, notably enabling grape 0.16.2 and Swagger 0.21.0 that uses Swagger 2.0 spec - [@dblock](https://github.com/dblock).
* [#21](https://github.com/slack-ruby/slack-ruby-bot-server/issues/21): Fix: pass additional options through into `SlackRubyBot::Server` - [@dblock](https://github.com/dblock).

#### 0.1.1 (2016/6/4)

* [#14](https://github.com/slack-ruby/slack-ruby-bot-server/pull/14): Moved config/initializers into the library - [@tmsrjs](https://github.com/tmsrjs).

#### 0.1.0 (2016/6/1)

* Initial public release - [@dblock](https://github.com/dblock).
* Renamed slack-bot-server to slack-ruby-bot-server - [@dblock](https://github.com/dblock).
* [#11](https://github.com/slack-ruby/slack-ruby-bot-server/pull/11): Turn project into gem - [@tmsrjs](https://github.com/tmsrjs).
* Use `celluloid-io` instead of `faye-websocket`, upgrade to slack-ruby-bot 0.8.0 - [@dblock](https://github.com/dblock).
* Fixed `SlackRubyBotServer#reset` - [@dblock](https://github.com/dblock).
* Use Grape 0.15.x - [@dblock](https://github.com/dblock).
* Removed OOB GC - [@dblock](https://github.com/dblock).
* Use Unicorn instead of Puma - [@dblock](https://github.com/dblock).
* Fix: wait for EventMachine reactor to start - [@dblock](https://github.com/dblock).
* Use an OOB GC - [@dblock](https://github.com/dblock).
* Defer start, much faster - [@dblock](https://github.com/dblock).
* Backported changes from slack-metabot and slack-shellbot - [@dblock](https://github.com/dblock).
