ActiveSupport.use_standard_json_time_format = false

unless defined?(Fulcrum) && Fulcrum.respond_to?(:devise_modules)
  module Fulcrum
    def self.devise_modules
      [:database_authenticatable, :registerable, :confirmable,
       :recoverable, :rememberable, :trackable, :validatable]
    end
  end
end
