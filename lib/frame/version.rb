# frozen_string_literal: true

require 'date'

begin
# nyasocom_frame version = x.x.x-xxxx.xx.xx
module Frame
  frame_version = '1.0.10'
  t = Date.today
  build_day = t.strftime('%Y.%m.%d')
  VERSION = "#{frame_version}-#{build_day}".freeze
end
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
