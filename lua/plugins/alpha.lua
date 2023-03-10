local status, alpha = pcall(require, "alpha")
if not status then
  return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
    '',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣄⡀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣾⣿⣿⣿⣿⠿⢶⣄⠀⠀⠀⢼⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡉⠀⠀⠀⠀⠹⣦⡀⠀⠀⢻⣆⠀⠀⠀⠈⠀⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢦⣄⣀⣀⣀⣸⣷⣤⣤⣤⣿⡆⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡶⠶⠛⠛⠉⠉⠉⣉⣠⣴⣶⡿⣿⣷⣤⡀⠘⣟⡛⠛⠿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠛⠳⣄⠀⠀⠀⣠⣴⠟⠋⠁⠀⠈⠁⠈⠋⠉⠛⠿⠿⣷⣦⡌⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⣀⣴⠿⡇⠀⢀⣼⣉⣧⡴⠟⣉⣁⡀⠀⣀⣴⡿⠗⠀⠀⠷⣦⣄⠀⠈⠉⠛⡤⠴⣿⣦⡀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⠙⠚⠁⢀⣼⣟⡁⠘⠥⢼⣿⡿⠻⡟⢳⠀⣀⡀⣠⠼⣿⣧⢠⠊⢹⡇⠀⢈⣿⣿⣆⠀⠀⠀⠀',
    '⠀⠀⠀⠀⢠⡿⠁⠀⢀⠀⠀⠀⢠⡿⠛⡟⠁⠀⢀⣾⠏⠀⠀⠉⠁⢀⣿⠁⠘⠒⠁⢸⣷⠛⠋⠙⠤⠞⠀⢻⡝⣷⠀⠀⠀',
    '⠀⠀⠀⣴⠟⠀⠀⠐⡿⠀⠀⠀⣿⠃⣼⠁⠀⣠⡿⠉⠀⠀⠀⠀⠀⣸⢿⡆⠀⠀⠀⠈⣹⠀⠀⠀⠀⠀⠀⠸⣧⠸⣧⠀⠀',
    '⠀⠀⣸⠏⢀⠀⠀⠀⣴⠀⠀⢸⡇⣼⠃⣠⠖⣿⠃⣰⡆⠀⠀⠀⠀⡿⠀⢷⡀⠀⢠⡀⢹⡇⠀⠀⠀⠀⠀⠀⣿⡆⢻⡆⠀',
    '⠀⢠⣿⣶⡿⠀⠀⠀⡟⢷⠀⣿⣤⡵⠛⠁⢰⡏⠀⢸⠃⠀⠀⠀⢰⡇⠀⠈⢿⡄⠈⢻⣼⡇⢀⠀⠀⠀⠀⠀⢸⡇⠘⣷⠀',
    '⠀⠸⠋⣼⢁⣤⠀⢸⡇⢹⣦⣿⠀⠀⢀⡀⢸⠀⠀⣿⡇⠀⠀⠀⣼⠁⠀⠀⠑⣹⣦⡀⢸⡇⣼⡇⠀⠀⢸⡇⢸⡇⠀⣿⠀',
    '⠀⠀⢸⡏⢺⠃⠀⢸⠀⢸⣿⣿⠀⠀⣿⡇⠸⣧⠀⢻⡄⠀⠀⠀⣿⠀⠀⣶⡇⠀⠉⠙⣿⠃⣿⠀⠀⠀⢨⡁⢸⣿⠀⣿⠀',
    '⠀⢀⡿⢀⣿⡀⢸⣿⡀⢸⡟⢿⠀⠀⣿⡇⠀⠹⣷⡾⠷⣤⣄⣀⣏⠀⢸⣿⠀⠀⠀⣰⡏⣼⡿⠀⠀⠀⠀⣧⠈⣿⠀⢿⡄',
    '⢀⣾⠃⣸⣿⡇⠀⢿⡇⠈⣧⠀⠀⠀⢻⣧⠀⠀⠀⠀⠀⠀⠉⠙⠁⠀⢸⣿⠀⢀⣼⣿⣶⠟⠁⠀⠀⠀⢸⠿⡆⢻⡄⢸⡇',
    '⠺⠟⠛⣿⢿⣧⡀⢸⣿⣶⣿⣷⣒⡢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣵⣾⣿⣿⠟⢡⣤⠀⠀⠀⠀⣾⣠⣧⣼⣿⣼⡇',
    '⠀⠀⠀⣿⢀⣿⡿⢶⡿⠻⣶⣄⡐⠬⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣵⡶⠞⠋⣁⣀⠟⠋⠀⠀⠀⣰⣿⡿⠁⠉⠁⢹⡇',
    '⠀⠀⠀⣿⠟⢹⡇⢀⣄⠀⣿⣽⣟⠲⠶⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠈⠉⣉⣻⣿⣿⣿⠀⠀⠀⣀⣴⣿⣿⡄⠀⢀⡶⣿⣧',
    '⠀⠀⠀⠀⠀⠈⣷⢀⠋⠀⢻⡟⠙⢷⣤⠶⢛⣭⣿⣟⠻⣿⡗⠚⣿⣿⣉⠉⣹⠟⣰⣏⣠⣴⣾⠟⣿⡾⠉⠿⣦⣾⠁⠈⠉',
    '⠀⠀⠀⠀⠀⠀⢹⣾⠷⣦⣸⡇⢠⡶⢷⣶⡏⢁⣴⡿⠛⠻⢿⡛⠋⠀⠙⣶⡿⠙⢛⠋⠉⢸⡟⠀⠉⠀⠀⠀⠈⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠉⠀⠈⠉⣻⠟⠀⢀⣼⠿⢫⣽⠻⣦⣴⠾⣟⢿⡞⢛⣿⣥⣶⡿⢷⣄⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡋⠀⣴⣟⠁⠀⠘⠁⣼⣿⡇⢰⣤⠈⢿⡄⠉⠀⠈⢻⡌⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠏⠀⠀⢠⣿⣿⣶⣤⣾⣿⣿⣧⣀⣡⣤⣼⠟⠀⠀⠀⠀⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⢀⣾⠃⠀⠀⠀⠈⠛⢿⣿⣿⣿⠏⣿⣿⣿⣿⣿⠿⠇⠀⠀⠀⠀⠀⠈⢻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '',
}
dashboard.section.buttons.val = {
    dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
    dashboard.button("a", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("p", "  Find project", ":Telescope project <CR>"),
    dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
    dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
    dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  -- NOTE: requires the fortune-mod package to work
  -- local handle = io.popen("fortune")
  -- local fortune = handle:read("*a")
  -- handle:close()
  -- return fortune
  return "Car_pe@still-alive"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Constant"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.section.header.opts.hl = "Type"
dashboard.section.terminal.opts.hl = "Include"

dashboard.opts.opts.noautocmd = true

-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)


-- local keymap = vim.keymap
-- keymap.set('n', '<C-l>', ':Alpha<cr>')

-- '',
-- '⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
-- '⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕',
-- '⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕',
-- '⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕',
-- '⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑',
-- '⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐',
-- '⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐',
-- '⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔',
-- '⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕',
-- '⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕',
-- '⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕',
-- '⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕',
-- '⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁',
-- '⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿',
-- '',


-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⢠⣶⣿⣿⣿⣿⣿⣷⣦⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⡿⠿⠛⠛⠉⠻⣧⡀⠀⠀⠀⠘⢿⣿⠿⠿⠿⠿⠿⠿⠿⠿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣧⡀⠀⠀⠀⠀⠀⠘⢿⣄⠀⠀⠀⠘⢿⣆⠀⠀⠀⠀⠀⠀⠀⢻⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣦⡀⠀⠀⠀⠀⣈⣿⣧⣀⣤⣤⣼⣿⡆⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⡾⠿⠿⠛⠛⠛⠛⠋⠉⢋⣩⣽⣷⣾⣿⣄⠀⠀⢰⣶⠶⠾⢿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣾⡟⠛⠁⠀⠀⠀⠀⠀⠀⣀⣤⣶⠿⠿⠿⣿⠛⠻⣿⡿⣿⣦⣠⣭⣤⡀⠀⠈⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠉⠈⠙⣧⡀⠀⠀⠀⣠⣶⠿⠋⠉⠀⠀⠀⠀⡀⠀⠀⠉⠀⠈⠉⠛⠿⠿⣿⣷⣦⠀⢈⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣿⢿⡇⠀⠀⢀⣼⠉⣹⣦⣶⠟⠋⣉⡀⠀⠀⠀⢀⣴⣿⡿⠇⠀⠀⢸⣶⣦⡀⠀⠀⠈⠛⠛⣃⣤⢴⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁⠀⠳⠤⠶⠋⠉⢹⣿⡟⠁⠀⡞⠉⣹⣧⣴⡾⢿⡷⠷⡄⠀⠀⠀⠀⣀⣛⣿⣦⡀⢠⠔⠲⣿⠀⠀⠈⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⢀⣾⡟⠁⠀⠀⠀⠀⠀⠀⢀⣴⣿⣟⣴⠆⠀⠙⠛⣻⣿⠏⠁⠹⣤⡴⠇⢐⣿⡗⠸⡅⢈⡿⢻⣷⢳⣄⣠⢿⡀⠀⢠⡟⢻⣿⢿⣆⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⣠⣿⠋⠀⠀⢀⣤⠀⠀⠀⢀⣶⡟⠁⣩⠁⠀⠀⠀⣴⣿⠁⠀⠀⠀⠀⠀⠀⣸⣿⠁⠀⠉⠉⠀⠈⣿⣯⠉⠀⠀⠙⠚⠋⠀⠀⣿⡇⢿⡆⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⣼⡟⠁⠀⠀⠀⣼⡇⠀⠀⠀⢸⣿⠁⣰⡏⠀⠀⣠⣾⡿⠁⠀⠀⠀⠀⠀⠀⢀⣿⢿⡇⠀⠀⠀⠀⠀⠈⣻⠀⠀⠀⠀⠀⠀⠀⠀⢹⣷⠈⣿⣄⠀⠀⠀',
-- '⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⢉⡶⠀⠀⢀⣿⠃⢠⡏⠁⢀⣴⣿⡟⠀⢠⡄⠀⠀⠀⠀⠀⢸⡇⠘⣿⡀⠀⠀⠀⠀⠈⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠸⣿⡀⠀⠀',
-- '⠀⠀⢰⡿⢀⣤⡆⠀⠀⠀⣸⣧⡀⠀⢸⡟⠠⢟⣠⡶⠟⢠⣿⠃⠀⣿⡅⠀⠀⠀⠀⠀⣿⠃⠀⠸⣧⡀⠀⠸⣧⡀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⠀⢻⡇⠀⠀',
-- '⠀⠀⣾⣿⢿⡿⠁⠀⠀⠀⡟⠈⣿⠀⢸⣷⠶⠟⠉⠀⠀⣼⡇⠀⠀⣼⠁⠀⠀⠀⠀⢠⣿⠀⠀⠀⠘⣷⡄⠀⠘⢿⣿⡇⠀⡤⠀⠀⠀⠀⡀⠀⢸⣇⠀⠸⣿⠀⠀',
-- '⠀⠀⠿⢁⣾⢃⣠⡆⠀⢀⡟⠀⣿⡆⣾⡅⠀⠀⠀⠀⠀⣿⡇⠀⢰⣿⡇⠀⠀⠀⠀⣸⡏⠀⠀⠀⠈⢊⡻⣦⡀⠀⣿⡇⣸⣿⠀⠀⠀⠰⣿⠁⢨⣿⠀⠀⣿⠀⠀',
-- '⠀⠀⠀⣸⡏⠰⡿⠁⠀⢸⡇⠀⢸⣿⣿⠁⠀⠀⢸⣿⠃⢻⣧⠀⠘⣿⠀⠀⠀⠀⠀⣿⠇⠀⠀⣤⡶⠀⠉⠪⠻⢿⣿⠁⣿⡏⠀⠀⠀⠀⠛⠃⠀⣿⠀⠐⣿⡆⠀',
-- '⠀⠀⢠⣿⠁⣸⡇⠀⢠⣼⡇⠀⢸⣿⣿⡇⠀⠀⢸⣿⠀⠀⢻⣦⢀⣼⣧⡀⠀⠀⠀⣿⠀⠀⢠⣿⡇⠀⠀⠀⠀⣸⡏⢀⣿⡁⠀⠀⠀⠀⢻⡄⠀⣿⠀⠀⣿⡇⠀',
-- '⠀⠀⣼⡏⢠⡟⣇⠀⠸⣿⡇⠀⢸⡇⠙⠃⠀⠀⢸⣿⠀⠀⠈⠻⣿⡏⠙⠿⢶⣤⣤⣿⠀⠀⢸⣿⡇⠀⠀⠀⣰⡿⠡⣿⡿⠁⠀⠀⠀⠀⢸⣷⠀⣿⡆⠀⢻⡇⠀',
-- '⠀⣼⡟⠀⣸⣇⣿⠀⠀⢿⣿⠀⠘⣿⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⢸⣿⠃⠀⣠⣾⣿⣷⣿⠟⠁⠀⠀⠀⠀⠀⣿⢸⡇⢹⣷⠀⢸⡇⠀',
-- '⢿⣿⡷⠿⣿⣿⣿⡆⠀⠸⣿⣧⣄⣻⣷⡠⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣛⣤⣾⣿⣿⣿⠟⢁⣀⠀⠀⠀⠀⠀⢰⡏⢰⣇⡀⣿⣧⣸⡇⠀',
-- '⠀⠀⠀⠀⣿⠀⢻⣿⣦⣄⣿⣿⣯⡉⠉⢉⡙⠲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠊⣩⣭⣽⡾⠟⠉⢲⣿⡿⠀⠀⠀⠀⠀⣾⣷⣿⠛⠛⠛⠛⣿⡇⠀',
-- '⠀⠀⠀⠀⣿⢀⣼⣿⠉⠛⠿⠇⠙⣿⣷⣤⣉⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢿⣿⣿⣉⣁⣀⣤⣤⣎⠉⠀⠀⠀⠀⠀⣼⣿⡿⠋⠀⠀⠀⠀⣸⣷⠀',
-- '⠀⠀⠀⠀⣿⡟⠉⣿⡆⠀⣤⡀⠀⣿⡧⣮⡙⠛⠷⣶⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⣈⣩⣭⣽⣿⣿⡇⠀⠀⠀⢀⣠⣾⣿⣿⣯⡀⠀⠀⣼⡿⣿⣿⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⢹⣧⢠⠻⠃⠀⢿⡿⠏⠻⣶⣄⣠⡶⠿⣋⣻⣿⠻⢿⣿⣶⠶⠶⢶⣾⡿⠛⠛⠋⣿⠟⢀⣿⠃⢀⣠⣴⣿⢻⣯⣾⠏⠙⣿⣆⣰⡟⠁⠘⠛⠃',
-- '⠀⠀⠀⠀⠀⠀⠀⠘⣿⣼⣶⣄⠀⢸⣧⠀⢀⣭⣿⢋⣠⡶⠟⠙⢻⣷⣦⣿⣿⣤⣶⣿⠋⠻⢷⡄⣸⡏⣴⣿⣿⡿⠟⠛⣿⠇⠘⠛⠋⠀⠀⠈⠛⠛⠁⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⠋⠻⣷⣌⣿⣀⣿⠋⠙⠻⣿⣄⣤⣾⣿⣍⠉⠈⠙⢻⣄⣁⠀⣀⣠⣿⣿⠁⠈⣠⣄⠀⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠈⣩⡿⠃⠀⢀⣰⣾⠟⢉⣴⡟⠻⣷⣶⡿⠿⣟⢻⣿⠛⢉⣿⣧⣶⣿⣿⢻⣷⣠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠁⢠⣴⣿⠋⠀⠀⠘⠋⠀⣸⣿⣿⠀⣆⣨⠈⢻⣧⠈⠉⠉⠀⠈⢿⣆⠻⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⠃⠀⠈⠙⣻⣷⣤⣀⡀⢠⣴⣿⣿⣿⠀⠘⠛⠀⢈⣿⣷⠀⠀⠀⠀⠀⢿⣖⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠁⠀⠀⠀⢺⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣦⣶⣶⣿⣿⣿⠃⠀⠀⠀⠀⠀⠈⠻⢶⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡏⠀⠀⠀⠀⠀⠀⠈⡛⠿⣿⣿⣿⣿⠳⣿⣿⣿⣿⣿⡿⠿⠟⠂⠀⠀⠀⠀⠀⠀⠀⠀⣹⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
