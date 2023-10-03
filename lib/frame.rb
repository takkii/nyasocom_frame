# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

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

  def default
    puts "nyasocom_frame is Copyright © 2022 Takayuki Kamiyama."
  end

  def document
    puts text = <<-EOS
# ライセンス情報
heat

# バージョン表記
heat -v

# ひな形自動生成
heat new [フォルダ名]
heat new example

# ヘルプ、ドキュメント
heat -h
EOS
  end
end

h = /\A[-][h]\z/
n = /\Anew\z/
v = /\A[-][v]\z/

one = ARGV[0]

include Heart

if one.nil?
  default
elsif one.match?(h)
  document
elsif one.match?(n)
  installer
elsif one.match?(v)
  version
else
  puts '該当のオプションがありません、ドキュメントを参照してください。'
end

GC.compact

__END__
