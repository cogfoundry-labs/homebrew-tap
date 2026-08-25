class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.2/loomloom-darwin-arm64.tar.gz"
      sha256 "52a89cac8d484233cd5baf196807d348b432fe319de7d6210d7c574e4d8159c5"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.2/loomloom-darwin-amd64.tar.gz"
      sha256 "43975a4253bcbf02fd4029058733e35ae037256f2daff08c73827efea69088b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.2/loomloom-linux-arm64.tar.gz"
      sha256 "906c3ee264b31981263acf01b96dbd16403db2c5261697c93b3a852ea997254e"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.2/loomloom-linux-amd64.tar.gz"
      sha256 "77129e68b4a9e2378a1d294e52cefc46d54a39dc36827907035c315e5b9176ea"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
