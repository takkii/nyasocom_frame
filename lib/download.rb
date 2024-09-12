# frozen_string_literal: true
#!/usr/bin/ruby

require 'fileutils'

# Installer runner.
class InstallerRunner
  def self.run
    encoding_style
    nyasocom_command
  end
  
  private
  def self.nyasocom_command
    if system('git clone git@github.com:takkii/nyasocom_oss.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_oss.git')
    end
    FileUtils.cd("./nyasocom_oss")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_oss with nyasocom_frame.

EOF
  end

  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
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
