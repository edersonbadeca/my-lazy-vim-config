local pyright_opts = {
  single_file_support = true,
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = false,
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- pode ser "openFilesOnly" ou "workspace"
        typeCheckingMode = "basic", -- opções: "off", "basic", "strict"
        useLibraryCodeForTypes = true,
      },
    },
  },
}
require("lvim.lsp.manager").setup("pyright", pyright_opts)
