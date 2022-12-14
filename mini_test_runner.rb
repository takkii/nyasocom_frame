# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Mini Test Runner
# class Auto_Runner
#   def self.ruby
#     require 'auto_runner'
#   end
# end

class Mini_Runner
  def self.ruby
    require 'mini_auto_runner'
  end
end

# begin
#   Auto_Runner.ruby
#   Auto_Runner(true, "/GitHub/nyasocom_frame/mini_test")
# rescue StandardError => e
#   puts e.backtrace
# ensure
#   GC.compact
# end

begin
  Mini_Runner.ruby
  Mini_Runner(true, "/GitHub/nyasocom_frame/mini_test")
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__