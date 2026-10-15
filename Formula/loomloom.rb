class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.2/loomloom-darwin-arm64.tar.gz"
      sha256 "8a9505c9722fa836e5ab26f5153a2b072052ed3518270d88795bca061c2eae62"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.2/loomloom-darwin-amd64.tar.gz"
      sha256 "af28a5e7b6a5d203cec6bb4da8561522448814f0186656506a7f1ee72f6d04a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.2/loomloom-linux-arm64.tar.gz"
      sha256 "631bade10f8ef0ca800089da24512ff6489f7390f21ce0f1e09e723a77b69470"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.2/loomloom-linux-amd64.tar.gz"
      sha256 "664c7ac85884c6fc02c04accc14f7e070ca59b11e7ad2860146d2f36a2ace427"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
