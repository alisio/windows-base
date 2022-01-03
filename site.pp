# instalar modulo chocolatey - puppet module install puppetlabs-chocolatey
$base_packages = [
  '7zip.install',
  #'adobereader',
  'autohotkey',
  'ccleaner',
  # 'directx',
  'ditto',
  'dropbox',
  'firefox',
  'FoxitReader',
  # 'geforce-experience',
  'googlechrome',
  'hwinfo',
  'microsoft-teams',
  'IrfanView',
  'bitwarden',
  'libreoffice-fresh',
  'notepadplusplus',
  'steam',
  'teamviewer',
  'transmission',
  'vlc',
  'windirstat',
]
$sysadmin_dev_packages = ['atom','docker-cli','docker-compose','docker-desktop',
                          'evernote','git','hfsexplorer','microsoft-windows-terminal',
                          'rufus','wireshark','vagrant','vim','virtualbox','wsl2']
$content_creation_packages = ['audacity','gimp','handbrake.install','inkscape','obs','obs-virtualcam']
node default {
  include chocolatey
  Package { provider => chocolatey, ensure   => latest,}
  package { [$base_packages]:}
  package { [$sysadmin_dev_packages]:}
  package { [$content_creation_packages]:}
}
