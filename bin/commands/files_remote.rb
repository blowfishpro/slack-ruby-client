# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module CLI
    class App
      desc 'FilesRemote methods.'
      command 'files_remote' do |g|
        g.desc 'Adds a file from a remote service'
        g.long_desc %( Adds a file from a remote service )
        g.command 'add' do |c|
          c.flag 'external_id', desc: 'Creator defined GUID for the file.'
          c.flag 'external_url', desc: 'URL of the remote file.'
          c.flag 'title', desc: 'Title of the file being shared.'
          c.flag 'filetype', desc: 'type of file.'
          c.flag 'indexable_file_contents', desc: 'A text file (txt, pdf, doc, etc.) containing textual search terms that are used to improve discovery of the remote file.'
          c.flag 'preview_image', desc: 'Preview of the document via multipart/form-data.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_remote_add(options))
          end
        end

        g.desc 'Retrieve information about a remote file added to Slack'
        g.long_desc %( Retrieve information about a remote file added to Slack )
        g.command 'info' do |c|
          c.flag 'external_id', desc: 'Creator defined GUID for the file.'
          c.flag 'file', desc: 'Specify a file by providing its ID.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_remote_info(options))
          end
        end

        g.desc 'Retrieve information about a remote file added to Slack'
        g.long_desc %( Retrieve information about a remote file added to Slack )
        g.command 'list' do |c|
          c.flag 'channel', desc: 'Filter files appearing in a specific channel, indicated by its ID.'
          c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
          c.flag 'limit', desc: 'The maximum number of items to return.'
          c.flag 'ts_from', desc: 'Filter files created after this timestamp (inclusive).'
          c.flag 'ts_to', desc: 'Filter files created before this timestamp (inclusive).'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_remote_list(options))
          end
        end

        g.desc 'Remove a remote file.'
        g.long_desc %( Remove a remote file. )
        g.command 'remove' do |c|
          c.flag 'external_id', desc: 'Creator defined GUID for the file.'
          c.flag 'file', desc: 'Specify a file by providing its ID.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_remote_remove(options))
          end
        end

        g.desc 'Share a remote file into a channel.'
        g.long_desc %( Share a remote file into a channel. )
        g.command 'share' do |c|
          c.flag 'channels', desc: 'Comma-separated list of channel IDs where the file will be shared.'
          c.flag 'external_id', desc: 'The globally unique identifier (GUID) for the file, as set by the app registering the file with Slack.  Either this field or file or both are required.'
          c.flag 'file', desc: 'Specify a file registered with Slack by providing its ID. Either this field or external_id or both are required.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_remote_share(options))
          end
        end

        g.desc 'Updates an existing remote file.'
        g.long_desc %( Updates an existing remote file. )
        g.command 'update' do |c|
          c.flag 'external_id', desc: 'Creator defined GUID for the file.'
          c.flag 'external_url', desc: 'URL of the remote file.'
          c.flag 'file', desc: 'Specify a file by providing its ID.'
          c.flag 'filetype', desc: 'type of file.'
          c.flag 'indexable_file_contents', desc: 'File containing contents that can be used to improve searchability for the remote file.'
          c.flag 'preview_image', desc: 'Preview of the document via multipart/form-data.'
          c.flag 'title', desc: 'Title of the file being shared.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_remote_update(options))
          end
        end
      end
    end
  end
end
