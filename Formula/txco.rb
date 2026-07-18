class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.22"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.22/txco_0.2.22_darwin_arm64.tar.gz"
      sha256 "eae0c57ff782a11c9d42cc2d9d48870476ac841cbb4a39c1e0d83dbe3339eac9"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.22/txco_0.2.22_darwin_amd64.tar.gz"
      sha256 "32746edc6bdcd22a7e97f31be9fe163628a349677db533eb0f759e7f3f449d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.22/txco_0.2.22_linux_arm64.tar.gz"
      sha256 "1eeca9625bcfbcc208c98b3de779332ef735ab71a184f824f8243acd0bdad99b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.22/txco_0.2.22_linux_amd64.tar.gz"
      sha256 "a59be46f904e25b0f0c7af04ce7f5b53d72c9f76832141216e072a1b42a1162c"
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
