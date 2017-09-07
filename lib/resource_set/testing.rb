require 'resource_set/testing/have_action_matchers'
require 'resource_set/testing/action_handler_matchers'

module ResourceSet
  module Testing
    def have_action(action)
      HaveActionMatchers.new(action)
    end

    def handle_response(action, &block)
      ActionHandlerMatchers.new(action)
    end
  end
end

if defined?(RSpec)
  RSpec.configure do |config|
    config.include ResourceSet::Testing, resource_set: true
  end
end
