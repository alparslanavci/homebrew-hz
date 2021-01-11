class HazelcastAT4202101 < Formula
  desc "Tool to run Hazelcast IMDG member instances locally"
  homepage "https://github.com/hazelcast/hazelcast-command-line"
  url "https://github.com/alparslanavci/hazelcast-command-line/releases/download/v4.2021.01/hazelcast-4.1.1.tar.gz"
  sha256 "12a464af3f0e66d3fbbb5586d8532ab0d7be19ee8782249928eb66b6027c1dae"

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
