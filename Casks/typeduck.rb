# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "typeduck" do
  version "1.6.1"
  sha256 "6f2927b354219abb0afa6ae15f3b57e9329d8bbae8c1e4bde7992bc131474029"

  url "https://github.com/TypeDuck-HK/TypeDuck-Mac/releases/download/#{version}/TypeDuck-v#{version}-Mac.pkg"
  name "typeduck"
  desc "Cantonese for everyone at your fingertips"
  homepage "https://github.com/TypeDuck-HK/TypeDuck-Mac"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  pkg "TypeDuck-v#{version}-Mac.pkg"

  uninstall pkgutil: "hk.eduhk.inputmethod.TypeDuck",
            delete:  "/Library/Input Methods/TypeDuck.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Scripts/hk.eduhk.inputmethod.TypeDuck",
    "~/Library/Containers/hk.eduhk.inputmethod.TypeDuck",
  ]
end
