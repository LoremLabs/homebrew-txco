class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.50"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.50/txco_0.2.50_darwin_arm64.tar.gz"
      sha256 "59c9151e509ab294e6fe51f9538fa2decbd9c6e3bb8ffabfe58bce59b82f4267"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.50/txco_0.2.50_darwin_amd64.tar.gz"
      sha256 "70601a3ae5e2f998a4df0b1792bbbf1e67bea3dd83b9f6e5bb4b36814fc29adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.50/txco_0.2.50_linux_arm64.tar.gz"
      sha256 "5e73f377ff626d653508197fa4e6e3f47bb49658fc90265cfa5e491915d81ee4"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.50/txco_0.2.50_linux_amd64.tar.gz"
      sha256 "1f01cd4df8fff3efe4666d5b1e487cb89844717e9fbb830e4f7fd4b3aaf43259"
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
