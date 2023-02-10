# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/req/mini-test"

# Encoding Settings
def encoding_style
  Encoding.default_internal = 'UTF-8'
  Encoding.default_external = 'UTF-8'
end

# Ruby file find
class MiniTestFile
  attr_reader :mini_test

  def initialize
    @mini_test = Mini(true, '/GitHub/nyasocom_frame/mini_test')
  end

  def remove
    remove_instance_variable(:@mini_test)
  end
end

begin
  MiniTestFile.new.remove
rescue LoadError => e
  puts e.backtrace
  encoding_style.tanraku_exit
ensure
  GC.compact
end

__END__
