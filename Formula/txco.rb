class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.23"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.23/txco_0.2.23_darwin_arm64.tar.gz"
      sha256 "250c95c3a0f1f1755bfb4940ae2ffd16c929005eb3a43866d600d4ede1c1a5ee"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.23/txco_0.2.23_darwin_amd64.tar.gz"
      sha256 "477b44a2ca9ea5a3f984b2cca1a362ad705d05bcaa5f2bf6121934333a5d0009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.23/txco_0.2.23_linux_arm64.tar.gz"
      sha256 "74ad01838101d34dd2dccaa4e1b152c2c6b6a6f56843de93a72a05b9bcc9d05e"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.23/txco_0.2.23_linux_amd64.tar.gz"
      sha256 "07c75506ca1ee82547e8e6ae5c0e5f4ac5a2d0ed0507c9951869b648cc2814b1"
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
