class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.65"
  license "MPL-2.0"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.65"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "32e58415fe8244d94135b428a970bffa89edd8b28447e5582da96bd6ccc2d0eb"
    sha256 cellar: :any_skip_relocation, monterey:       "55d208662c99b6bf180940872cf099b9c75ad7316193cc4788301351a74c719c"
    sha256 cellar: :any_skip_relocation, arm64_linux:    "c76f8f40ec4ca2535b098afdb35b8f8161dd5d49a02210f9b5a7e094fff73468"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "f08902e0bbdba623b62b686931226a91828fded02cf7b3659c009c2ca8e6c88c"
  end

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.65/txco_0.2.65_darwin_arm64.tar.gz"
      sha256 "98336e08b9a39a434aafd4a152bdb271fb93f7345b1247119358df5f698d9b2b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.65/txco_0.2.65_darwin_amd64.tar.gz"
      sha256 "43b132a2319b4cbd6b10c541c9414a4db4c2e9956fc679fc108cd91f03193fea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.65/txco_0.2.65_linux_arm64.tar.gz"
      sha256 "827bd8df178abb91f755406508254335798b746039e9fdf6be7b5e6a8481b661"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.65/txco_0.2.65_linux_amd64.tar.gz"
      sha256 "991c8e2ddd225be544472b450996528fe29e884b269dfccf5f5d095cb1b87ab4"
    end
  end

  def install
    bin.install "txco"
    # `thanks` is the same binary under a second name; argv[0] dispatches it
    # into room mode (`thanks <args>` == `txco room <args>`). install_symlink
    # lets Homebrew manage the second command with no post-install script.
    bin.install_symlink "txco" => "thanks"
  end

  test do
    system "#{bin}/txco", "--help"
    system "#{bin}/thanks", "--help"
  end
end
