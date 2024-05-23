-- vimhelp.org/options.txt.html

-- INDENT --
vim.opt.expandtab = true    -- tab expanded to spaces
vim.opt.shiftwidth = 4      -- number of spaces to use for each indent
vim.opt.tabstop = 4         -- number of spaces a <Tab> in the file counts for
vim.opt.softtabstop = 4     -- number of spaces a <Tab> counts for while
                            -- performing editing operations
vim.opt.smartindent = true  -- do smart indenting when starting a new line 
                            -- (adding indent after {, after keywords, etc.)
vim.opt.autoindent = true   -- copy indent when starting a new line

-- VIEW --
vim.opt.number = true           -- print the line number in front of each line
vim.opt.relativenumber = true   -- print number relative to the current line
vim.opt.linebreak = true        -- break lines at special characters, not just the last one

-- CLIPBOARD --
vim.opt.clipboard = "unnamedplus" -- clipboard settings, more at the link above

-- MOUSE --
vim.opt.mouse = "a"         -- enable the use of the mouse
vim.opt.mousefocus = true   -- the window the mouse is on is activated

-- COLUMN --
vim.opt.colorcolumn = "120" -- show column on 120 symbol. useful to align text


