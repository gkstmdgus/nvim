return {
    'mfussenegger/nvim-dap',
    dependencies = {
        "rcarriga/nvim-dap-ui",      -- debug ui
        "nvim-neotest/nvim-nio",     -- nvim-dap-ui's dependencies
        "mfussenegger/nvim-dap-python"
    },
    config = function ()
        local dap = require("dap")
        local dapui = require("dapui")

        require("dapui").setup()

        -- open and cloase the debug windows automatically
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

        -- set config by language 
        -- 1. python 
        require("dap-python").setup() 

        -- icon 
        vim.fn.sign_define("DapBreakpoint", {
        text = "",
        texthl = "DiagnosticSignError",
        linehl = "",
        numhl = "",
        })

        vim.fn.sign_define("DapBreakpointRejected", {
          text = "", -- or "❌"
          texthl = "DiagnosticSignError",
          linehl = "",
          numhl = "",
        })

        vim.fn.sign_define("DapStopped", {
          text = "", -- or "→"
          texthl = "DiagnosticSignWarn",
          linehl = "Visual",
          numhl = "DiagnosticSignWarn",
        })

        -- keymaps
        local opts = { noremap = true, silent = true }

        function AddDesc(table, value)
            table["desc"] = value
            return table
        end

        -- Toggle breakpoint
        vim.keymap.set("n", "<leader>dt", function()
            dap.toggle_breakpoint()
        end, AddDesc(opts, "Toggle breakpoint"))

        -- Continue / Start
        vim.keymap.set("n", "<leader>dc", function()
          dap.continue()
        end, AddDesc(opts, "Continue / Start"))

        -- Step Over
        vim.keymap.set("n", "<leader>do", function()
          dap.step_over()
        end, AddDesc(opts, "Step Over"))

        -- Step Into
        vim.keymap.set("n", "<leader>di", function()
          dap.step_into()
        end, AddDesc(opts, "Steo Into"))

        -- Step Out
        vim.keymap.set("n", "<leader>dO", function()
          dap.step_out()
        end, AddDesc(opts, "Step Out"))
			
        -- Keymap to terminate debugging
	    vim.keymap.set("n", "<leader>dq", function()
	      require("dap").terminate()
        end, AddDesc(opts, "terminate"))

        -- Toggle DAP UI
        vim.keymap.set("n", "<leader>du", function()
          dapui.toggle()
        end, AddDesc(opts, "Toggle DAP UI"))
    end
}
