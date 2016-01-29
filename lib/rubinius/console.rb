require "rubinius/console/client"
require "rubinius/console/version"

module Rubinius
  module Console
    def self.find_processes(path=nil, user=nil)
      user = Etc.getlogin unless user

      unless path
        dir = ENV["TMPDIR"] || "/tmp"
        path = File.join dir, "rbx-#{user}-*"
      end

      Dir[path]
    end

    # Your code goes here...
  end
end
