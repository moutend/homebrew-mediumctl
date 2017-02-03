class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.1.5'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.1.5'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.5/' << @@binname
    sha256 'cfad7e34b5e35aee23804caa979e4035b547d1d6ab6789d4a7e7a96f723dfc10'
  else
    @@binname = 'mediumctl_darwin_386_v0.1.5'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.5/' << @@binname
    sha256 '4d2ae2849a93179bd90058cf9c37beb5fa16b496f6c44ef5dc6d6a4336213222'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
