local eslint = require("eslint")

eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})
