-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- key mapping
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- moving between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize the windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- move between buffers
keymap("n", "<F3>", ":bp<CR>", opts)
keymap("n", "<F4>", ":bn<CR>", opts)

-- disable search highligthing
keymap("n", "<F12>", ":nohlsearch<CR>", opts)

keymap("n", "<C-F2>", ":put =strftime('%Y-%m-%d %H:%M:%S')<CR>", opts)

-- move lines
keymap("n", "<F8>", ":m .+1<CR>==", opts)
keymap("n", "<F7>", ":m .-2<CR>==", opts)
keymap("i", "<F8>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<F7>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "<F8>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<F7>", ":m '<-2<CR>gv=gv", opts)

-- cscope optiones
-- default mapping
keymap("n", "<C-\\>s", ":cs find s <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>g", ":cs find g <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>c", ":cs find c <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>t", ":cs find t <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>e", ":cs find e <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>f", ":cs find f <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>i", ":cs find i <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-\\>d", ":cs find d <C-R>=expand(“<cword>”)<CR><CR>", opts)

-- horizontal split
keymap("n", "<C-@>s", ":scs find s <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>g", ":scs find g <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>c", ":scs find c <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>t", ":scs find t <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>e", ":scs find e <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>f", ":scs find f <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>i", ":scs find i <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@>d", ":scs find d <C-R>=expand(“<cword>”)<CR><CR>", opts)

-- vertical split
keymap("n", "<C-@><C-@>s", ":vert scs find s <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>g", ":vert scs find g <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>c", ":vert scs find c <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>t", ":vert scs find t <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>e", ":vert scs find e <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>f", ":vert scs find f <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>i", ":vert scs find i <C-R>=expand(“<cword>”)<CR><CR>", opts)
keymap("n", "<C-@><C-@>d", ":vert scs find d <C-R>=expand(“<cword>”)<CR><CR>", opts)


-- 현재 커서 위치의 단어를 `ltag`로 검색하고 `lwindow`를 열기
vim.keymap.set("n", "<F9>", function()
  local word = vim.fn.expand("<cword>")  -- 현재 커서가 있는 단어 가져오기
  vim.cmd("normal! m6")                  -- 이전 위치 저장 (Ctrl + t를 위해)
  vim.cmd("ltag " .. word)                -- `ltag` 실행
  vim.cmd("pop")
  vim.cmd("lopen")                        -- location list 창 열기
end, { noremap = true, silent = true })

-- Ctrl + t를 눌렀을 때 이전 위치로 돌아가기
vim.keymap.set("n", "<F10>", function()
  vim.cmd("normal! `6")                   -- 이전 위치로 돌아가기
end, { noremap = true, silent = true })

