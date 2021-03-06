module APIMatchers
  module HTTPStatusCode
    class BeUnprocessableEntity < Base
      def expected_status_code
        422
      end

      def failure_message_for_should
        %Q{expected that '#{@http_status_code}' to be Unprocessable entity with the status '#{expected_status_code}'.}
      end

      def failure_message_for_should_not
        %Q{expected that '#{@http_status_code}' to NOT be Unprocessable entity with the status '#{expected_status_code}'.}
      end
    end
  end
end