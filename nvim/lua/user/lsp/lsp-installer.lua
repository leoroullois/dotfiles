local status_ok, lsp_installer = pcall(require, "mason")
if not status_ok then
	return
end

local servers = {
	"rust_analyzer", -- RUST
	"jsonls", -- JSON
	"sumneko_lua", -- LUA
	"yamlls", -- YAML
	"tsserver", -- Typescript
	"tailwindcss", -- Tailwind CSS
	"sqls", -- SQL
	"pyright", -- Python
	"prismals", -- Prisma
	"marksman", -- Markdown
	"ltex", -- LaTeX
	"jdtls", -- Java
	"html", -- HTML
	"graphql", -- GraphQL
	"emmet_ls", -- Emmet
	"eslint", -- ESLint
	"dockerls", -- Docker
	"cssls", -- CSS
	"clangd", -- C++
	"bashls",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server == "pyright" then
		local pyright_opts = require("user.lsp.settings.pyright")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	if server == "emmet_ls" then
		local emmet_ls_opts = require("user.lsp.settings.emmet_ls")
		opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
	end

	lspconfig[server].setup(opts)
end

require("mason-lspconfig").setup({
	ensure_installed = servers,
})
