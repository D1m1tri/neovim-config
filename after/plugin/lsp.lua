local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- See :help lsp-zero-keybindings
  -- to learn the available keybindings

  local opts = {buffer = bufnr, remap = false}
  vk = vim.keymap
  vk.set('n', 'jd', function() vim.lsp.buf.definition() end, opts)
  vk.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
  vk.set('n', 'jl', function() vim.diagnostic.goto_next() end, opts)
  vk.set('n', 'jh', function() vim.diagnostic.goto_prev() end, opts)
  vk.set('n', 'sd', function() vim.diagnostic.open_float() end, opts)
end)

lsp.setup()

-- You need to setup `cmp` after `lsp-zero`
local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    width = 80,
    height = 40,
  },
  mapping = {
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-h>'] = cmp.mapping.scroll_docs(-4),
    ['<C-l>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-y>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'buffer'},
  }
})
