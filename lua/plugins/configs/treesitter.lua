local options = {
  ensure_installed = { "lua", "vim", "vimdoc" , "c", "cpp", "rust"},

  auto_install = true,

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
