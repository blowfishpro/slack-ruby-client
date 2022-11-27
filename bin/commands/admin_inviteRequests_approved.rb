# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module CLI
    class App
      desc 'AdminInviterequestsApproved methods.'
      command 'admin_inviteRequests_approved' do |g|
        g.desc 'List all approved workspace invite requests.'
        g.long_desc %( List all approved workspace invite requests. )
        g.command 'list' do |c|
          c.flag 'cursor', desc: 'Value of the next_cursor field sent as part of the previous API response.'
          c.flag 'limit', desc: 'The number of results that will be returned by the API on each invocation. Must be between 1 - 1000, both inclusive.'
          c.flag 'team_id', desc: 'ID for the workspace where the invite requests were made.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_inviteRequests_approved_list(options))
          end
        end
      end
    end
  end
end
