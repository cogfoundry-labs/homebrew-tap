class Loomloom < Formula
  desc "Developer CLI for LoomLoom workflows"
  homepage "https://github.com/cogfoundry-labs/loomloom"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.2/loomloom-darwin-arm64.tar.gz"
      sha256 "15121b7c17b8de5e33dbe89ea37204f2d6691c692ded42cf941eb83640438c42"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.2/loomloom-darwin-amd64.tar.gz"
      sha256 "4e588eaf5503c65b865f71f2368a624ada4f4d571cd68f046a3c86b2be08bd5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.2/loomloom-linux-arm64.tar.gz"
      sha256 "de1ba52e37b7aa91a77778a81e7d68c5394c144642c61f24a4995dacf76110fc"
    else
      url "https://github.com/cogfoundry-labs/loomloom/releases/download/v0.2.2/loomloom-linux-amd64.tar.gz"
      sha256 "1faa83e5847e1288624edcc599cc995ee0910996cbb5467c5c5c7576bd332293"
    end
  end

  def install
    bin.install "loomloom"
  end

  test do
    assert_match "Developer CLI for LoomLoom workflows", shell_output("#{bin}/loomloom --help")
  end
end
