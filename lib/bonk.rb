require_relative "bonk/version"

module Bonk
  module Bonk::InstanceMethods
    def bonk
    end
  end

  ::Object.send :include, Bonk::InstanceMethods
end
