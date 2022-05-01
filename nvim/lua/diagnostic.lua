vim.diagnostic.config {
	severity_sort = true
}

local ns = vim.api.nvim_create_namespace("severity_based_ns")

for _, handler in pairs({"signs", "virtual_text", "underline"}) do
	local orig_handler = vim.diagnostic.handlers[handler]

	vim.diagnostic.handlers[handler] = {
		show = function(_, bufnr, _, opts)
			local diagnostics = vim.diagnostic.get(bufnr)

			local max_severity_per_line = {}
			for _, d in pairs(diagnostics) do
				local m = max_severity_per_line[d.lnum]
				if not m or d.severity < m.severity then
					max_severity_per_line[d.lnum] = d
				end
			end

			local filtered_diagnostics = vim.tbl_values(max_severity_per_line)

			orig_handler.show(ns, bufnr, filtered_diagnostics, opts)
		end,
		hide = function(_, bufnr)
			orig_handler.hide(ns, bufnr)
		end,
	}
end
