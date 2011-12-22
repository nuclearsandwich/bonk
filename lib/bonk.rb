require_relative "bonk/version"

module Bonk
  module Bonk::InstanceMethods
    def bonk
      yield self
    end
  end

  ::Object.send :include, Bonk::InstanceMethods
end
