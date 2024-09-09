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
  
  def command
    if system('git clone git@github.com:takkii/nyasocom_pg.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_pg.git')
    end
    FileUtils.cd("./nyasocom_pg")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_pg with nyasocom_frame.

EOF
  end

  def self.run
    encoding_style
    two = ARGV[1]
    
    pt = /\Apostgresql\z/
    pg = /\A--pg\z/
    
    if two.nil?
      puts <<-EOF

nyasocom_pg project, clone command.

heat db postgresql

heat db --pg

EOF
    elsif two.match?(pt)
      command
    elsif two.match?(pg)
      command
    else
      puts 'No such option is found, please refer to the documentation.'
    end
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
