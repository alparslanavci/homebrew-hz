class Hazelcast < Formula
  desc "Tool to run Hazelcast IMDG member instances locally"
  homepage "https://github.com/hazelcast/hazelcast-command-line"
  url "https://github.com/alparslanavci/hazelcast-command-line/releases/download/v4.2020.10/hazelcast-4.1-BETA-1.tar.gz"
  sha256 "7cc639a3fb39553b2c2f1bc508711029fac01a59c2f654fa359e0693ce351ad3"

  bottle :unneeded

  depends_on "openjdk" => :recommended

  def install
    libexec.install Dir["*"]
    (bin/"hz").write_env_script libexec/"bin/hz", Language::Java.overridable_java_home_env
    prefix.install_metafiles
  end

end
