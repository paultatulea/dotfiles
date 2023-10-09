return {
  "mfussenegger/nvim-dap-python",
  config = function()
    require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    local dap = require("dap")
    dap.configurations.python = {
      {
	type = 'python';
	request = 'launch';
	name = "Launch file";
	program = "${file}";
      },
    }
  end,
}
