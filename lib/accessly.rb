require "accessly/version"
require "accessly/query"
require "accessly/policy/base"
require "accessly/permission/grant"
require "accessly/permission/revoke"
require "accessly/permission/bulk_revoke"
require "accessly/models/permitted_action"
require "accessly/models/permitted_action_on_object"

module Accessly

  unless defined?(GrantError) == "constant" && GrantError.class == Class
    GrantError = Class.new(StandardError)
  end

  unless defined?(RevokeError) == "constant" && RevokeError.class == Class
    RevokeError = Class.new(StandardError)
  end

  unless defined?(BulkRevokeError) == "constant" && BulkRevokeError.class == Class
    BulkRevokeError = Class.new(StandardError)
  end

  # Accessly's tables are prefixed with accessly_ to
  # prevent any naming conflicts with other tables in the database.
  def self.table_name_prefix
    "accessly_"
  end
end
