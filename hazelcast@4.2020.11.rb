class HazelcastAT4.2020.11 < Formula
  desc "Tool to run Hazelcast IMDG member instances locally"
  homepage "https://github.com/hazelcast/hazelcast-command-line"
  url "https://github.com/alparslanavci/homebrew-hz/releases/download/v4.2020.11/hazelcast-4.1-BETA-1.tar.gz"
  sha256 "ca8211e236b2c88d0c11a12511b2647f8f5c82a21f65192ceac729dc625fbe8e"

  bottle :unneeded

  depends_on "openjdk" => :recommended

  def install
    libexec.install Dir["*"]
    (bin/"hz").write_env_script libexec/"bin/hz", Language::Java.overridable_java_home_env
    prefix.install_metafiles
  end

end
