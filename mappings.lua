return {
  n = {
    ["<leader>bn"] = { ":tabnew<CR>", desc = "New tab" },
    ["<leader>bq"] = { ":Bdelete<CR>", desc = "Close current buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    ["<leader>m"] = { name = " Minimap" },

    ["<leader>c"] = { name = "", desc = " Color" },
    ["<leader>cp"] = { ":CccPick<CR>", desc = "Pick color" },
    ["<leader>cc"] = { ":CccConvert<CR>", desc = "Convert color" },
    ["<leader>ce"] = { ":CccHighlighterEnable<CR>", desc = "Enable highlights" },
    ["<leader>cd"] = { ":CccHighlighterDisable<CR>", desc = "Disable highlights" },
    ["<leader>ct"] = { ":CccHighlighterToggle<CR>", desc = "Toggle highlights" },

    ["<leader>P"] = { name = "󰱖 Clipboard" },
    ["<leader>Pp"] = { '"+p', desc = "Paste from clipboard" },
    ["<leader>PP"] = { '"+P', desc = "Paste from clipboard" },

    ["<leader>s"] = { ":nohlsearch<CR>", desc = "Clear search highlights" },

    ["<A-j>"] = { ":MoveLine(1)<CR>", desc = "Move line down" },
    ["<A-k>"] = { ":MoveLine(-1)<CR>", desc = "Move line up" },
    ["<A-h>"] = { ":MoveHChar(-1)<CR>", desc = "Move character left" },
    ["<A-l>"] = { ":MoveHChar(1)<CR>", desc = "Move character right" },
  },

  v = {
    ["<A-j>"] = { ":MoveBlock(1)<CR>", desc = "Move line down" },
    ["<A-k>"] = { ":MoveBlock(-1)<CR>", desc = "Move line up" },
    ["<A-h>"] = { ":MoveHBlock(-1)<CR>", desc = "Move character left" },
    ["<A-l>"] = { ":MoveHBlock(1)<CR>", desc = "Move character right" },

    ["<leader>y"] = { '"+y', desc = "Yank to clipboard" },
    ["<leader>Pp"] = { '"+p', desc = "Paste from clipboard" },
    ["<leader>PP"] = { '"+P', desc = "Paste from clipboard" },
  },

  t = {},
}
