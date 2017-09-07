require 'resource_set/version'

module ResourceSet
  ALLOWED_VERBS = [:get, :post, :put, :delete, :head, :patch, :options]
  ActionConnection = Struct.new(:action, :connection)

  autoload :Resource, 'resource_set/resource'
  autoload :ResourceCollection, 'resource_set/resource_collection'

  autoload :Action, 'resource_set/action'
  autoload :ActionInvoker, 'resource_set/action_invoker'
  autoload :MethodFactory, 'resource_set/method_factory'

  autoload :StatusCodeMapper, 'resource_set/status_code_mapper'
  autoload :EndpointResolver, 'resource_set/endpoint_resolver'

end
