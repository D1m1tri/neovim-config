vo = vim.opt

vo.guicursor = ""

vo.nu = true
vo.relativenumber = true

vo.tabstop = 2
vo.softtabstop = 2
vo.shiftwidth = 2
vo.expandtab = true

vo.smartindent = true

vo.wrap = true

vo.swapfile = false
vo.backup = false
vo.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vo.undofile = true

vo.hlsearch = false
vo.incsearch = true

vo.termguicolors = true

vo.scrolloff = 8
vo.signcolumn = "yes"
vo.isfname:append("@-@")

vo.updatetime = 50

vo.colorcolumn = "0"
