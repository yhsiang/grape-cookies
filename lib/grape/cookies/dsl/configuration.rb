module Grape
  module Cookies
    module DSL
      module Configuration
        extend ActiveSupport::Concern

        module ClassMethods
          def settings
            config_context.to_hash
          end

          def configure(&block)
            config_context.instance_exec(&block)
          end
        end
      end
    end
  end
end
