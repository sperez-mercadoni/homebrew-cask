cask 'rstudio' do
  version '1.1.442'
  sha256 '1a1064c860d4172b1dd51f8f798bcbb0c5d41ce56fb63a65ccecced513205957'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'

  caveats <<~EOS
    #{token} depends on R.
    There are different ways to satisfy that dependency. RStudio recommends installing R from The R Project, which is required to install binary R packages, without needing to compile packages from source.

    https://support.rstudio.com/hc/en-us/articles/217799238

    To install the R Project package run:

      brew cask install r-app

    Alternative ways to satisfy the dependency are:

      brew install r

    This requires compiling R packages from source.
  EOS
end
