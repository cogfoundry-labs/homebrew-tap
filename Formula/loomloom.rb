class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.0/loomloom-darwin-arm64.tar.gz"
      sha256 "e1b2e110d98c2f747034a175b96898ead822d4a6a9015108ed6a27e2ba084eda"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.0/loomloom-darwin-amd64.tar.gz"
      sha256 "e31255846c0f13718f227ab11e967d212d33d3afd6815194e7673d92bb3f3fe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.0/loomloom-linux-arm64.tar.gz"
      sha256 "35f502107e3f09cfc8ca940aac4af25765f2510b9ad13154589ad619316e952f"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.5.0/loomloom-linux-amd64.tar.gz"
      sha256 "41b87d9ed283dc70b96c335b99315a80af630d2ba979db12eb33e7f0b85964db"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
