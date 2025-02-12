local M = {}

-- Store state
M.active = false
M.input = ""

-- Original highlight state
M.original_hls = {}

-- Key mappings for the custom mode
local keymap = {
	a = "1",
	s = "2",
	d = "3",
	f = "4",
	g = "5",
	h = "6",
	j = "7",
	k = "8",
	l = "9",
	[";"] = "0",
}

-- Function to enter the custom mode
function M.enter_mode()
	if M.active then
		return
	end
	M.active = true
	M.input = ""

	-- Disable color highlights
	M.original_hls = vim.api.nvim_exec("hi", true)
	vim.cmd("nohlsearch")

	-- Define mappings
	for k, v in pairs(keymap) do
		vim.api.nvim_buf_set_keymap(0, "n", k, "", {
			noremap = true,
			callback = function()
				M.input = M.input .. v
				print("Input: " .. M.input)
			end,
		})
	end

	-- Map Enter to execute the jump
	vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "", {
		noremap = true,
		callback = function()
			M.execute_jump()
		end,
	})

	-- Map Escape to exit the mode
	vim.api.nvim_buf_set_keymap(0, "n", "<Esc>", "", {
		noremap = true,
		callback = function()
			M.exit_mode()
		end,
	})

	print("Line Jumper Mode: Type numbers and press Enter to jump to the line.")
end

-- Function to execute the jump
function M.execute_jump()
	if M.input ~= "" then
		local line = tonumber(M.input)
		if line and line > 0 and line <= vim.api.nvim_buf_line_count(0) then
			vim.api.nvim_win_set_cursor(0, { line, 0 })
			print("Jumped to line " .. line)
		else
			print("Invalid line number: " .. M.input)
		end
	end
	M.exit_mode()
end

-- Function to exit the custom mode
function M.exit_mode()
	if not M.active then
		return
	end
	M.active = false
	M.input = ""

	-- Restore highlights
	vim.cmd("redraw!")

	-- Clear buffer-specific keymaps
	for k, _ in pairs(keymap) do
		vim.api.nvim_buf_del_keymap(0, "n", k)
	end
	vim.api.nvim_buf_del_keymap(0, "n", "<CR>")
	vim.api.nvim_buf_del_keymap(0, "n", "<Esc>")

	print("Exited Line Jumper Mode.")
end

-- Setup function to map 'ga' to enter the custom mode
function M.setup()
	vim.api.nvim_set_keymap("n", "ga", "", {
		noremap = true,
		callback = M.enter_mode,
		silent = true,
	})
end

return M
