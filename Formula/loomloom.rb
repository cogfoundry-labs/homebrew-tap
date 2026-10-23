class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.6.0/loomloom-darwin-arm64.tar.gz"
      sha256 "eb658c613ff1f45cd9bd5e782334a3ae3664fccfda1cbd6f0af563b2d4dfebce"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.6.0/loomloom-darwin-amd64.tar.gz"
      sha256 "745d165a53955e39815d0179f3c69e60cefc2786eb5ac169f79da253be5040ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.6.0/loomloom-linux-arm64.tar.gz"
      sha256 "e4481ed5eb96432f649491205cbbbc278b4dd78da5b42e3ee55a0c9af6764144"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.6.0/loomloom-linux-amd64.tar.gz"
      sha256 "c8f2422f1c62ba68c10bf5129ec053fa15881f78696b067c66ebc856a435f570"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
