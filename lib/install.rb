# frozen_string_literal: true
#!/usr/bin/ruby

require 'fileutils'

# Installer runner.
class InstallerRunner

  def self.install
    encoding_style
    nyasocom_custom_name
  end

  def self.download
    encoding_style
    nyasocom_command
  end

  def self.nyasocom2_download
    encoding_style
    nyasocom2_command
  end

  def self.nyasocom3_download
    encoding_style
    nyasocom3_command
  end

  def self.database
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
      postgresql
    elsif two.match?(pg)
      postgresql
    else
      puts 'No such option is found, please refer to the documentation.'
    end
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

  def self.postgresql
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

  def self.nyasocom2_command
    if system('git clone git@github.com:takkii/nyasocom2.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom2.git')
    end
    FileUtils.cd("./nyasocom2")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom2 with nyasocom_frame.

EOF
  end

  def self.nyasocom3_command
    if system('git clone git@github.com:takkii/nyasocom_sun_pg_win.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_sun_pg_win.git')
    end
    FileUtils.cd("./nyasocom_sun_pg_win")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_sun_pg_win with nyasocom_frame.

EOF
  end
end

__END__
