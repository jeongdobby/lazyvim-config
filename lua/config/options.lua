-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- cscope setting
vim.opt.tags = { './tags', 'tags', '../tags', '../../tags', '../../../tags', '../../../../tags' }
vim.opt.csprg = '/usr/bin/cscope'
vim.opt.csto = 0
vim.opt.cst = true
vim.opt.nocsverb = true

if vim.fn.filereadable('./cscope.out') == 1 then
    vim.cmd('cs add ./cscope.out')
elseif vim.fn.filereadable('../cscope.out') == 1 then
    vim.cmd('cs add ../cscope.out')
elseif vim.fn.filereadable('../../cscope.out') == 1 then
    vim.cmd('cs add ../../cscope.out')
elseif vim.fn.filereadable('../../../cscope.out') == 1 then
    vim.cmd('cs add ../../../cscope.out')
elseif vim.fn.filereadable('../../../../cscope.out') == 1 then
    vim.cmd('cs add ../../../../cscope.out')
else
    vim.cmd('cs add /usr/src/linux/cscope.out')
end

vim.opt.cscopeverbose = true

