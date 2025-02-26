return{
  -- alpha --
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local status, alpha = pcall(require, "alpha")
      if not status then
        return
      end

      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
        '',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣄⡀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣾⣿⣿⣿⣿⠿⢶⣄⠀⠀⠀⢼⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡉⠀⠀⠀⠀⠹⣦⡀⠀⠀⢻⣆⠀⠀⠀⠀⠀⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
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
        '⠀⠀⢸⡏⢺⠃⠀⢸⠀⢸⣿⣿⠀⠀⣿⡇⠸⣧⠀⢻⡄⠀⠀⠀⣿⠀⢰⣶ ⠀⠉⠙⣿⠃⣿⠀⠀⠀⢨⡁⢸⣿⠀⣿⠀',
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
        dashboard.button("t", "  Todo List", ":TodoFzfLua <cr>"),
        dashboard.button("y", "󰇥  Yazi Manager", ":Yazi cwd<cr>"),
        dashboard.button("l", "  LazyGit", ":LazyGit<cr>"),
        dashboard.button("f", "󰈞  Find files", ":FzfLua files<cr>"),
        dashboard.button("g", "󰊄  Grep", ":FzfLua live_grep <cr>"),
        dashboard.button("r", "  Oldfiles", ":FzfLua oldfiles<cr>"),
        dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <cr>"),
        dashboard.button("q", "󰗼  Quit Neovim", ":qa<cr>"),
      }

      local function footer()
        return "Haru@overduse"
      end

      dashboard.section.footer.val = footer()
      dashboard.section.footer.opts.hl = "Constant"
      dashboard.section.buttons.opts.hl = "Keyword"
      dashboard.section.header.opts.hl = "Type"
      dashboard.section.terminal.opts.hl = "Include"
      dashboard.opts.opts.noautocmd = true

      alpha.setup(dashboard.opts)

    end
  },

}
