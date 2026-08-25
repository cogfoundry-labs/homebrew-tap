class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.1/loomloom-darwin-arm64.tar.gz"
      sha256 "e0dd759914de4cd6e793d76e3b132df209d624e499cc90f14e2e4223fd77ba21"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.1/loomloom-darwin-amd64.tar.gz"
      sha256 "3d03d0e17d861a39d520f77ec0033924ae72748db381d1b709d1f3e5b1e1b784"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.1/loomloom-linux-arm64.tar.gz"
      sha256 "5a5cf594ac31120e98b00b45b48fce304e47dbff96e51b392718c1c175b7447b"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.3.1/loomloom-linux-amd64.tar.gz"
      sha256 "6e3102de49cc0a5f4cc3b55082ded74327fde658cacb73b8ab09ef383f252b8c"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
