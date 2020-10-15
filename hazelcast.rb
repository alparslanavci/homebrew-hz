class Hazelcast < Formula
  desc "Tool to run Hazelcast IMDG member instances locally"
  homepage "https://github.com/hazelcast/hazelcast-command-line"
  url "https://github.com/alparslanavci/homebrew-hz/releases/download/v4.2020.10/hazelcast-4.1-BETA-1.tar.gz"
  sha256 "5d10ec3f94f4bffc1ad2b4aa7d56c7fe3e2b9fecee1ff9b1db946c0e3834d71b"

  bottle :unneeded

  depends_on "openjdk" => :recommended

  def install
    libexec.install Dir["*"]
    (bin/"hz").write_env_script libexec/"bin/hz", Language::Java.overridable_java_home_env
    prefix.install_metafiles
  end

end
