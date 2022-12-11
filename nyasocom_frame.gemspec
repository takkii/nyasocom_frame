# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'frame/version'

Gem::Specification.new do |s|
  s.name = "nyasocom_frame"
  s.version = Frame::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["takkii"]
  s.email = "karuma.reason@gmail.com"
  s.executables = %w(heat)
  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.homepage = "https://github.com/takkii/nyasocom_frame"
  s.metadata = { "github_repo" => "ssh://github.com/takkii/nyasocom_frame" }
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "3.0.3"
  s.summary = "にゃそこん初号機の構成ファイルを指定のフォルダに自動で生成します。"
  s.description = "シンプルなにゃそこんフレームです。RSSアンテナの原型は出来ています。"

  # 依存ライブラリ
  # s.add_runtime_dependency('himekuri', '~> 0.1')

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end
end
