return {
  "mfussenegger/nvim-dap",
  keys = {
    { "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", desc = "Debugger step into" },
    { "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", desc = "Debugger step over" },
    { "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", desc = "Debugger step out" },
    { "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", desc = "Debugger continue" },
    { "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", desc = "Debugger toggle breakpoint" },
    {
      "<Leader>dd",
      "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      desc = "Debugger set conditional breakpoint",
    },
    { "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", desc = "Debugger reset" },
    { "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", desc = "Debugger run last" },
  },
  config = function()
    local dap, dapui = require "dap", require "dapui"

    -- Add Rust-specific DAP configuration
    dap.configurations.rust = {
      {
        type = "codelldb", -- Set adapter to codelldb
        request = "launch",
        name = "Launch Rust Program",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {}, -- Optional: arguments for the program
        runInTerminal = true,
      },
    }

    dap.configurations.cpp = {
      {
        type = "codelldb", -- Set adapter to codelldb
        request = "launch",
        name = "Launch C++ Program",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {}, -- Optional: arguments for the program
        runInTerminal = true,
      },
    }

    dap.configurations.c = dap.configurations.cpp

    -- Configure dapui to open and close during debugging
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}
