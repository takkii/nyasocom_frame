# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'fileutils'

# Heat module
module Heart
  module_function

  def version
    require 'frame/version'
    print Frame::VERSION
    puts ' : [nyasocom_framework_version] '
  end

  def installer
    require 'install'
    puts <<-EOF

Used nyasocom_frame to clone nyasocom_oss with any project name.

EOF
  end

  def download
    require 'download'
    puts <<-EOF

Cloned nyasocom_oss with nyasocom_frame.

EOF
  end

  def default
    puts 'nyasocom_frame is Copyright © 2022-2023 Takayuki Kamiyama.'
  end

  def document
    puts text = <<-EOS
# license information
heat

# Version notation
heat -v

# Nyasocom generated
heat init

# Template generation
heat new [Folder_Name]
heat new example

# HELP
heat -h
EOS
  end
end

h = /\A[-][h]\z/
i = /\Ainit\z/
n = /\Anew\z/
v = /\A[-][v]\z/

one = ARGV[0]

include Heart

if one.nil?
  default
elsif one.match?(h)
  document
elsif one.match?(i)
  download
elsif one.match?(n)
  installer
elsif one.match?(v)
  version
else
  puts 'No such option is found, please refer to the documentation.'
end

GC.compact

__END__
