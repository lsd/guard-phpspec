module Guard
  class PHPSpec
    class Error < ::StandardError; end
    class ApplicationNotFoundError < Error; end
    class CommandNotFoundError < Error; end
    class ArgumentError < Error; end
  end
end
