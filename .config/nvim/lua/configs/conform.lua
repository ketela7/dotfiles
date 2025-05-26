local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        bash = { "shfmt" },
        markdown = { "mdfmt" },
        python = {
            "ruff",
            "autopep8",
            "autoflake",
        },
    },

    format_on_save = {
        timeout_ms = 5000,
        lsp_fallback = true,
    },
    formatters = {
        -- Python
        -- black = {
        --     prepend_args = {
        --         "--fast",
        --         "--line-length",
        --         "80",
        --     },
        -- },
        -- isort = {
        --     prepend_args = {
        --         "--profile",
        --         "black",
        --     },
        -- },
        ruff = {
            prepend_args = {
                "check",
                "--extend-select",
                "I",
            },
        },
    },
}

return options
