function! CVSDiff(filename, cvsversion)
  " append a:filename to keep extension and therefore highlighting mode
  let patchname = tempname() . a:filename
  let tempname = tempname() . a:filename
  let newname = tempname() . a:filename
  execute "!cvs diff -a -r " . a:cvsversion . " " . a:filename . " > " . patch
  execute "!cp " . a:filename . " " . tempname
  execute "!patch -R -o " . newname . " " . tempname . " < " . patchname
  execute "vertical diffsplit " . newname
  call delete(patchname)
  call delete(tempname)
  call delete(newname)
endfunction
command -nargs=1 CVSDiff silent call CVSDiff("%", "<args>")
