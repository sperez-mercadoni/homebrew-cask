cask 'hex-fiend' do
  version '2.8.0'
  sha256 '42dab86945759333669bbe2dc01c20294ee5ec5f87530e654454cdb2853736cb'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: 'a08db7b7bd0ea6df35d193897ac5c5b11ed894703d9df5f67dfbd2d3828060de'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'

  conflicts_with cask: 'hex-fiend-beta'

  app 'Hex Fiend.app'
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
               '~/Library/Caches/com.ridiculousfish.HexFiend',
               '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
               '~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState',
             ]
end
