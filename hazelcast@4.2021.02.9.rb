class HazelcastAT42021029 < Formula
  desc "Tool to run Hazelcast IMDG member instances locally"
  homepage "https://github.com/hazelcast/hazelcast-command-line"
  url "https://github.com/alparslanavci/hazelcast-command-line/releases/download/v4.2021.02.9/hazelcast-4.1.1.tar.gz"
  sha256 "b7b1aa2e06125ef9948f0e1af154274afc54ed38cc8c1afed088408554e4f55d"

  bottle :unneeded

  depends_on "openjdk" => :recommended

  def install
    libexec.install Dir["*"]
    (bin/"hz").write_env_script libexec/"bin/hz", Language::Java.overridable_java_home_env
    prefix.install_metafiles
    inreplace libexec/"bin/download/hazelcast-download.properties", "hazelcastDownloadId=CLI", "hazelcastDownloadId=CLI_BREW"
  end

  def post_install
    exec "hz"
  end

end
