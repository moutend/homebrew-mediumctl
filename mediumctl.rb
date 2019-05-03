class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.4.0'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.4.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.0/' << @@binname
    sha256 '2230bd30a704de79abc9bb7c3c0cc311ff19b4b97570711e54b6d2815f1c3be9 '
  else
    @@binname = 'mediumctl_darwin_386_v0.4.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.0/' << @@binname
    sha256 'c49b0dc17a31bc841c122a929f4c33bbd4b8e58fd56d3125d6736273db5a60f4'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
