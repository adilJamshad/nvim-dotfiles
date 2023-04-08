local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
  -- require("nvim-tree.api").git.reload()
end


-- set up the clipboard option
vim.opt.clipboard:append{"unnamed", "unnamedplus"}

-- set up the wsl clipboard options
vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
    },
    paste = {
        ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
}

-- set up the autocmd to open the tree
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
vim.cmd('set rnu')
