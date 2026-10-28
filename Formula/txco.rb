class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.53"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.53/txco_0.2.53_darwin_arm64.tar.gz"
      sha256 "a11dd0ca2518c23feb9b548f21fbc1a1aba1742ab271762c7f86b75d45664613"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.53/txco_0.2.53_darwin_amd64.tar.gz"
      sha256 "01b9c4b0166067ffe072b318d83537b9334a2756477c37633d70d7545bf0b01c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.53/txco_0.2.53_linux_arm64.tar.gz"
      sha256 "621a5c13e9db6ae2075db4e01ae90431828064d439318994ad1b0e0d9640201f"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.53/txco_0.2.53_linux_amd64.tar.gz"
      sha256 "2cbadd67cb9315dee5ee9c381c181dc8ec013ea40338979d5b54a7557f4eb1ae"
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
