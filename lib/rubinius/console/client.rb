module Rubinius
  module Console
    class Client
      attr_reader :request_path
      attr_reader :request_io
      attr_reader :response_path
      attr_reader :response_io
      attr_reader :fsevent

      def initialize(path=nil)
        if path
          @request_path = File.join path, "console-request"
          @response_path = File.join path, "console-response"
        else
          @request_path = Server::RequestPath
          @response_path = Server::ResponsePath
        end

        @request_io = File.open @request_path, "w"
        @request_io.sync = true

        @response_io = File.open @response_path, "r+"

        @fsevent = FSEvent.new
        @fsevent.watch_file @response_io.fileno, @response_path
      end

      def write_request(request)
        @request_io.flock File::LOCK_EX
        @request_io.rewind
        @request_io.truncate 0
        @request_io.write request
      ensure
        @request_io.flock File::LOCK_UN
      end

      def read_response
        @fsevent.wait_for_event

        @response_io.flock File::LOCK_EX
        @response_io.rewind
        response = @response_io.read
        @response_io.rewind
        @response_io.truncate 0
        response
      ensure
        @response_io.flock File::LOCK_UN
      end
    end
  end
end
