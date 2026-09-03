class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.1/loomloom-darwin-arm64.tar.gz"
      sha256 "9d4fee4705085cb171167c961758febf3a426d3ba0a411d36c59714492b2c3a5"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.1/loomloom-darwin-amd64.tar.gz"
      sha256 "9fc967284936cf8cdb613592becfbc76a8021b0f26b311cd5e3ada3a5e3b5326"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.1/loomloom-linux-arm64.tar.gz"
      sha256 "20f04911325a2879ec927634b7ee0ac2de92f3781789cc8cb82c6e9f1311fa83"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.1/loomloom-linux-amd64.tar.gz"
      sha256 "5baed245b961beb06a1df3f9b34346ed66279d5327fb47919aaf0bc284f81d1b"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
