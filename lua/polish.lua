-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"cpp", "c"},
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
  end,
})

-- vim.cmd [[
--   if &encoding !=# 'utf-8'
--     set encoding=japan
--     set fileencoding=japan
--   endif
--   if has('iconv')
--     let s:enc_euc = 'euc-jp'
--     let s:enc_jis = 'iso-2022-jp'
--     if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
--       let s:enc_euc = 'eucjp-ms'
--       let s:enc_jis = 'iso-2022-jp-3'
--     elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
--       let s:enc_euc = 'euc-jisx0213'
--       let s:enc_jis = 'iso-2022-jp-3'
--     endif
--     if &encoding ==# 'utf-8'
--       let s:fileencodings_default = &fileencodings
--       let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
--       let &fileencodings = &fileencodings .','. s:fileencodings_default
--       unlet s:fileencodings_default
--     else
--       let &fileencodings = &fileencodings .','. s:enc_jis
--       set fileencodings+=utf-8,ucs-2le,ucs-2
--       if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
--         set fileencodings+=cp932
--         set fileencodings-=euc-jp
--         set fileencodings-=euc-jisx0213
--         set fileencodings-=eucjp-ms
--         let &encoding = s:enc_euc
--         let &fileencoding = s:enc_euc
--       else
--         let &fileencodings = &fileencodings .','. s:enc_euc
--       endif
--     endif
--     unlet s:enc_euc
--     unlet s:enc_jis
--   endif
--   if has('autocmd')
--     function! AU_ReCheck_FENC()
--       if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
--         let &fileencoding=&encoding
--       endif
--     endfunction
--     autocmd BufReadPost * call AU_ReCheck_FENC()
--   endif
-- ]]

