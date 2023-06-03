#!/bin/bash
sudo cp ./viman /usr/local/bin/
sudo chmod a+x /usr/local/bin/viman
echo 'function! Viman(entry_name)
    tabnew | execute "term ++curwin viman -e " . a:entry_name
endfunction
cnoreabbrev viman call Viman("")<left><left>' >> $HOME/.vimrc
