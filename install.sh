#!/bin/bash
sudo cp ./viman /usr/local/bin/
sudo chmod a+x /usr/local/bin/viman
echo 'function! VimanFunc(entry_name, ...)
    let args = join(a:000, ' ')
    tabnew | execute "term ++curwin viman -e " . a:entry_name . " " . args
endfunction

command! -nargs=+ Viman :call VimanFunc(<f-args>)
cnoreabbrev viman Viman' >> $HOME/.vimrc
