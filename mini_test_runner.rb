# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Mini Test Auto Runner
class Mini_Runner
  def self.ruby
    require 'mini_auto_runner'
  end
end

begin
  require 'minitest-runners'
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__