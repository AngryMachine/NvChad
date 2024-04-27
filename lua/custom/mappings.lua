local M = {}

M.general = {
  n = {
    ["sv"] = {":vsp<CR>", "open window v"},
    ["sh"] = {":sp<CR>", "open window h"},
    ["sc"] = {"<C-w>c", "close current window"},
    ["so"] = {"<C-w>o", "close other windows"},

    ["<C-n>"] = { ":cnext<CR>", "quickfix next"},
    ["<C-p>"] = { ":cprev<CR>", "quickfix previous"},

    ["<C-RIGHT>"] = { "<cmd> virtical resize-5 <CR>", "resize-5"},
    ["<C-LEFT>"] = { "<cmd> virtical resize+5 <CR>", "resize+5"},
    ["<C-UP>"] = { "<cmd> res-5 <CR>", "res-5"},
    ["<C-DOWN>"] = { "<cmd> res+5 <CR>", "res+5"}
  },
  v = {
    [">"] = { ">gv", "indent"}
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit"},
  }
}

M.hop = {
  n = {
    ["hl"] = {"<cmd> HopLine <CR>", "HopLine"},
    ["hc"] = {"<cmd> HopWordCurrentLine <CR>", "HopWordCurrentLine"},
  },
  v = {
    ["hl"] = {"<cmd> HopLine <CR>", "HopLine"},
    ["hc"] = {"<cmd> HopWordCurrentLine <CR>", "HopWordCurrentLine"},
  }
}

M.bufferline = {
  n = {
    ["th"] = { ":BufferLineCyclePrev <CR>", "BufferLineCyclePrev" },
    ["tl"] = { ":BufferLineCycleNext <CR>", "BufferLineCycleNext" },
    ["tp"] = { ":BufferLinePick <CR>", "BufferLinePick" },
    ["tc"] = { ":BufferLineCloseOthers <CR>", "BufferLineCloseOthers" },
  }
}

M.qf = {
  n = {
    ["<leader>ll"] = { "<cmd>lua require'qf'.toggle('c') <CR>", "Toggle quickfix list"},
  },
}

M.search_replace = {
  v = {
    ["<C-r>"] = {"<cmd>SearchReplaceSingleBufferVisualSelection<CR>", "SearchReplaceSingleBufferVisualSelection"},
    ["<C-s>"] = {"<cmd>SearchReplaceWithinVisualSelection<CR>", "SearchReplaceWithinVisualSelection"},
    ["<C-b>"] = {"<cmd>SearchReplaceWithinVisualSelectionCWord<CR>", "SearchReplaceWithinVisualSelectionCWord"},
  },
  n = {
    ["rs"] = { "<cmd>SearchReplaceSingleBufferSelections<CR>", "SearchReplaceSingleBuffer [s]elction list" },
    ["ro"] = { "<cmd>SearchReplaceSingleBufferOpen<CR>", "[o]pen" },
    ["rw"] = { "<cmd>SearchReplaceSingleBufferCWord<CR>", "[w]ord" },
    ["rW"] = { "<cmd>SearchReplaceSingleBufferCWORD<CR>", "[W]ORD" },
    ["re"] = { "<cmd>SearchReplaceSingleBufferCExpr<CR>", "[e]xpr" },
    ["rf"] = { "<cmd>SearchReplaceSingleBufferCFile<CR>", "[f]ile" },

    ["rbj"] = { "<cmd>SearchReplaceMultiBufferSelections<CR>","SearchReplaceMultiBuffer [s]elction list" },
    ["rbo"] = { "<cmd>SearchReplaceMultiBufferOpen<CR>", "[o]pen" },
    ["rbw"] = { "<cmd>SearchReplaceMultiBufferCWord<CR>", "[w]ord" },
    ["rbW"] = { "<cmd>SearchReplaceMultiBufferCWORD<CR>", "[W]ORD" },
    ["rbe"] = { "<cmd>SearchReplaceMultiBufferCExpr<CR>", "[e]xpr" },
    ["rbf"] = { "<cmd>SearchReplaceMultiBufferCFile<CR>", "[f]ile" },
  },
}

M.outline = {
  n = {
    ["<leader>o"] = { "<cmd> Outline <CR>", "Outline"},
  },
}

return M
