require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls" }
-- vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

local servers = {
    lua_ls = {},
    html = {},
    -- awk_ls = {},
    markdown_oxide = {},
    bashls = {},
    pylsp = {
        settings = {
            pylsp = {
                plugins = {
                    pyflakes = { enabled = true },
                    pycodestyle = {
                        enabled = true,
                        ignore = {
                            "E501",
                            "E722",
                            "W503",
                        },
                    },
                    autopep8 = { enabled = true },
                    yapf = { enabled = true },
                    mccabe = { enabled = true },
                    pylsp_mypy = { enabled = true },
                    pylsp_black = { enabled = true },
                    pylsp_isort = { enabled = true },
                },
            },
        },
    },
    -- pyright = {
    --   settings = {
    --     python = {
    --       analysis = {
    --         autoSearchPaths = true,
    --         typeCheckingMode = "basic",
    --       },
    --     },
    --   },
    -- },
}

for name, opts in pairs(servers) do
    vim.lsp.enable(name) -- nvim v0.11.0 or above required
    vim.lsp.config(name, opts) -- nvim v0.11.0 or above required
end
