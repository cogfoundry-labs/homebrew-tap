class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.4.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.9/loomloom-darwin-arm64.tar.gz"
      sha256 "2944489ff5d6b050801a2788c29b9d99e7671d880229cf4d6e4f51520263cef1"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.9/loomloom-darwin-amd64.tar.gz"
      sha256 "4eddeb5e6bb082fd8b1f4a11b1ca17a1d2fd2b7a59225961e9e1834191af81f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.9/loomloom-linux-arm64.tar.gz"
      sha256 "406ad10e4a6493f492827e3008a500663890b2cb813a317eff74a5ec4fc31a30"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.4.9/loomloom-linux-amd64.tar.gz"
      sha256 "a8a97521a12f90920fbf8edeb397dd83e6e72194e95dfd4267b6eaeda6212801"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
