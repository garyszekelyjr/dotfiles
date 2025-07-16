return {
	"github/copilot.vim",
	enabled = function()
		-- ON WINDOWS
		if package.config:sub(1,1) == "\\" then
			return true
		else
			return false
		end
	end
}
