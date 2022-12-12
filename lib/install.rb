# frozen_string_literal: true
#!/usr/bin/ruby

require 'fileutils'

# Installer runner.
class InstallerRunner
  # default encoding utf-8, change encode here.
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  def self.run
    encoding_style
    one = ARGV[1]
    FileUtils.mkdir_p(File.expand_path("~/#{one}"))
    FileUtils.cd(File.expand_path("~/#{one}"))
    system("git clone git@github.com:takkii/nyasocom_oss.git .")
    FileUtils.rm_rf(File.expand_path("~/#{one}/.git"))
  end
end

InstallerRunner.run

GC.compact

__END__