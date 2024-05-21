local g = vim.g
local set = vim.keymap.set

g.mapleader = " "
set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opt = vim.opt

-- ui
opt.number = true
opt.relativenumber = true
opt.termguicolors = true

opt.completeopt = "menu,menuone,noselect"
opt.pumblend = 10
opt.pumheight = 10

opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0 -- global statusline
opt.mouse = "a" -- Enable mouse mode
opt.scrolloff = 8 -- Lines of context
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.conceallevel = 3
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}
opt.hlsearch = true

opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"

--code
opt.expandtab = true -- Use spaces instead of tabs
opt.cursorline = true -- Enable highlighting of the current line
opt.inccommand = "nosplit"
opt.formatoptions = "jcroqlnt" -- tcqj
opt.list = true -- Show some invisible characters (tabs...
opt.lcs = {
	tab = " ",
}
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.smartindent = true -- Insert indents automatically
opt.tabstop = 2 -- Number of spaces tabs count for
opt.undofile = true
opt.undolevels = 10000
opt.breakindent = true
opt.joinspaces = false

--grep
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"

--search
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals

--geral
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.timeoutlen = 300

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
