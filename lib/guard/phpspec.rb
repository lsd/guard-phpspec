require 'guard'
require 'guard/guard'

module Guard
  class PHPSpec < Guard
    def initialize
      raise Exception.new('guard-phpspec is work in progress. not ready for use at the moment')
    end

    #autoload :Inspector, 'guard/phpspec/inspector'
    #autoload :Formatter, 'guard/phpspec/formatter'
    #autoload :Notifier,  'guard/phpspec/notifier'
    #autoload :Runner,    'guard/phpspec/runner'
    DEFAULT_OPTIONS = {
      :all_on_start   => true,
      :all_after_pass => true,
      :keep_failed    => true,
      :cli            => nil,
      :tests_path     => "#{Dir.pwd}/spec"
    }
  end
end
