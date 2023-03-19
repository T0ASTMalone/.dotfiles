local blamer = require("nvim-blamer")

blamer.setup({
    enable = true,
    format = '%committer │ %committer-time-human │ %summary',
})
