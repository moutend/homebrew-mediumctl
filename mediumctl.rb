class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.1.3'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.1.3'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.3/' << @@binname
    sha256 '27c655eb1c5d922490d15a663da327815b73884d035da56e88446f8508bc69b2'
  else
    @@binname = 'mediumctl_darwin_386_v0.1.3'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.3/' << @@binname
    sha256 '7b1c7b3290ce7030c7cf036ca03925a28d27285980d78aad65bdc60594448060'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
