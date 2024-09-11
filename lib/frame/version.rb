# frozen_string_literal: true

require 'date'

# nyasocom_frame version = x.x.x-xxxx.xx.xx
module Frame
  frame_version = '1.0.9'
  t = Date.today
  build_day = t.strftime('%Y.%m.%d')
  VERSION = "#{frame_version}-#{build_day}".freeze
end

GC.compact

__END__
