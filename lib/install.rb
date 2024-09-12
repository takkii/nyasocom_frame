# frozen_string_literal: true
#!/usr/bin/ruby

require 'fileutils'

# Installer runner.
class InstallerRunner

  def self.run
    encoding_style
    nyasocom_custom_name
  end
  
  private
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end
  
  def self.nyasocom_custom_name
    one = ARGV[1]
    FileUtils.mkdir_p("./#{one}")
    FileUtils.cd("./#{one}")
    if system('git clone git@github.com:takkii/nyasocom_oss.git .', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_oss.git .')
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
        puts <<-EOF

Used nyasocom_frame to clone nyasocom_oss with any project name.

EOF
  end
end

begin
  InstallerRunner.run
rescue LoadError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
