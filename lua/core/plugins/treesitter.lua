local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all",
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  -- indentation
  indent = { enable = true, disable = { "yaml" } },
  -- autotag with (nvim-autotag)
  autotag = { enable = true },
  auto_install = true,
}
