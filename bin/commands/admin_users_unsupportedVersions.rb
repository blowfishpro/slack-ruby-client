# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module CLI
    class App
      desc 'AdminUsersUnsupportedversions methods.'
      command 'admin_users_unsupportedVersions' do |g|
        g.desc 'Ask Slackbot to send you an export listing all workspace members using unsupported software, presented as a zipped CSV file.'
        g.long_desc %( Ask Slackbot to send you an export listing all workspace members using unsupported software, presented as a zipped CSV file. )
        g.command 'export' do |c|
          c.flag 'date_end_of_support', desc: 'Unix timestamp of the date of past or upcoming end of support cycles. If not provided will include all announced end of support cycles.'
          c.flag 'date_sessions_started', desc: 'Unix timestamp of a date to start looking for user sessions. If not provided will start six months ago.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_users_unsupportedVersions_export(options))
          end
        end
      end
    end
  end
end
