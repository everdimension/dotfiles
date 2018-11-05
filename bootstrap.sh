function syncDotFiles() {
  cp ./.slate ~/
}

echo 'Will sync';
syncDotFiles
unset syncDotFiles
