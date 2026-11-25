cask "capsaicin" do
  version "0.2.0"
  sha256 "56c09f1e339ca37e45ffc59d71be48dd888cb437c1645b1798e045ef5a027b1c"

  url "https://github.com/koutyuke/Capsaicin/releases/download/v#{version}/Capsaicin-#{version}.dmg"
  name "Capsaicin"
  desc "Menu bar app that prevents sleep and lights the Caps Lock LED while active"
  homepage "https://github.com/koutyuke/Capsaicin"

  livecheck do
    url "https://github.com/koutyuke/Capsaicin/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Capsaicin.app"
  binary "#{appdir}/Capsaicin.app/Contents/Helpers/capsaicin"

  uninstall quit: "io.github.koutyuke.capsaicin"

  zap trash: [
    "/Library/Application Support/io.github.koutyuke.capsaicin",
    "~/Library/Application Support/io.github.koutyuke.capsaicin",
    "~/Library/Caches/io.github.koutyuke.capsaicin",
    "~/Library/HTTPStorages/io.github.koutyuke.capsaicin",
    "~/Library/HTTPStorages/io.github.koutyuke.capsaicin.binarycookies",
    "~/Library/Preferences/io.github.koutyuke.capsaicin.plist",
  ]

  caveats <<~EOS
    If you installed the helper, remove it before uninstalling:
    open Capsaicin's settings, go to Helper, and click Remove…
  EOS
end
