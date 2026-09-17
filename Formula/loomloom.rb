class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.8/loomloom-darwin-arm64.tar.gz"
      sha256 "ab88292bd0b129db9d9934c5e1160d445066108f220d7467630339e18523ce11"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.8/loomloom-darwin-amd64.tar.gz"
      sha256 "030865bb92e8691dbcc9d60e61f09910cec9ac9e1e6e207ec2bba449d2b2e071"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.8/loomloom-linux-arm64.tar.gz"
      sha256 "5562c035b251e4fbdbaaac495ba81a3ee44cdf0dc05f32164b6d8881c0909cbf"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.8/loomloom-linux-amd64.tar.gz"
      sha256 "af276b07fda566da92ce343f2395503e7937fa6bd7232f3aab77de43d9161af6"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
