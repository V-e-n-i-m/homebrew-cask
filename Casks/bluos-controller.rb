cask "bluos-controller" do
  version "3.12.1"
  sha256 "10338352e22493656c0aab654b9049c263aef6b0e5f5655898dcbdd4b39198b1" 

  url "https://www.bluesound.com/wp-content/uploads/2020/11/BluOS-Controller-#{version}.dmg"
  name "BluOS Controller"
  desc "BluOS is a music management software that allows you to access and stream lossless music to every room using your home network."
  homepage "https://www.bluesound.com"

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
    "~/Application Support/BluOS Controller",
  ]
end
