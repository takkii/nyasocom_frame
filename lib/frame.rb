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
  end

  def downloader
    require 'download'
  end
  
  def databases
    require 'database'
  end

  def default
    str = 'nyasocom_frame is a framework for generating web applications. '
    puts str
  end

  def documents
    puts text = <<-EOS
# Nyasocom Framework information
heat

# Version notation
heat -v

# nyasocom_oss generated
heat init

# Template generation
heat new [Folder_Name]
heat new example

# nyasocom_pg generated
heat db postgresql
heat db --pg

# HELP
heat -h
EOS
  end
end

d = /\Adb\z/
h = /\A[-][h]\z/
i = /\Ainit\z/
n = /\Anew\z/
v = /\A[-][v]\z/

one = ARGV[0]

include Heart

if one.nil?
  default
elsif one.match?(h)
  documents
elsif one.match?(i)
  downloader
elsif one.match?(n)
  installer
elsif one.match?(v)
  version
elsif one.match?(d)
  databases
else
  puts 'No such option is found, please refer to the documentation.'
end

GC.compact

__END__
