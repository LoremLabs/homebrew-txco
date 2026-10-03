class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.39"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.39/txco_0.2.39_darwin_arm64.tar.gz"
      sha256 "c8d300c0854efc77952e28848d7f351b7699963d3b6b4bb0ba330cfb880cfcc5"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.39/txco_0.2.39_darwin_amd64.tar.gz"
      sha256 "cb1af7c49af6b9da3de66818199774734a2a4c308df05ba1c898dd266a5ec784"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.39/txco_0.2.39_linux_arm64.tar.gz"
      sha256 "a17b0964b1d4826cc08d76941e3b40e184cb724731ef421c45aaf8dab1c2b652"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.39/txco_0.2.39_linux_amd64.tar.gz"
      sha256 "89b9caa3d40d65927b7bcd85d32873a5f8d856a59fa5b8bc1dd07c775831fcea"
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
