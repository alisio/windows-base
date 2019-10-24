# instalar modulo chocolatey - puppet module install puppetlabs-chocolatey
$pacotes_basicos = [
  '7zip.install',
  'adobereader',
  'ccleaner',
  'directx',
  'dropbox',
  'atom',
  'firefox',
  'geforce-experience',
  'googlechrome',
  'hwinfo',
  # 'lastpass',
  'steam',
  'teamviewer',
  'transmission',
  'vlc',
]
$pacotes_sysadmin_dev = ['atom', 'docker','evernote','git','rufus','wireshark','vagrant','virtualbox']
$pacotes_multimidia = ['audacity','gimp','handbrake.install','inkscape']
node default {
  include chocolatey
  Package { provider => chocolatey, }
  package { [$pacotes_basicos]:
    ensure   => latest,
  }
}
