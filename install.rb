# frozen_string_literal: true
#!/usr/bin/ruby

require 'open3'
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
    system("git clone git@github.com:takkii/nyasocom_oss.git .")
  end
end

InstallerRunner.run