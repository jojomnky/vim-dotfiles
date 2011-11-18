" Vim script that add ability to search and play iTunes tracks from Vim
" Maintainer:	Daniel Choi <dhchoi@gmail.com>
" License: MIT License (c) 2011 Daniel Choi

if exists("g:ViTunesLoaded") || &cp || version < 700
  finish
endif
let g:vitunes_tool = '/opt/local/lib/ruby/gems/1.8/gems/vitunes-0.4.3/lib/vitunes-tool-objc '
source /opt/local/lib/ruby/gems/1.8/gems/vitunes-0.4.3/lib/vitunes.vim

