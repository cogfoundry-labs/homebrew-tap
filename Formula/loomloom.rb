class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.4/loomloom-darwin-arm64.tar.gz"
      sha256 "cbd16a7b5e6c064a6b186ce355fdb490d63ac352f7464eacc7d42e2b6c42bc1e"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.4/loomloom-darwin-amd64.tar.gz"
      sha256 "62a84809959eca4be78f4b12bd562fd1141f92007f659c0e8ef8310e03e34328"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.4/loomloom-linux-arm64.tar.gz"
      sha256 "af8a235048f7168c7731e6b143e1ee65f3f7273f0d8b8bc9644aa4f70d30391b"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.4/loomloom-linux-amd64.tar.gz"
      sha256 "020cd1263a8c057b8012ac9e3ab93f4d4f12a7e8d422d42350773429024e8f9c"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
