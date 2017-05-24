local controllers = lovr.headset.getControllers()
local colors = {}
for k, v in pairs(controllers) do
	colors[k] = {math.random(1,255),math.random(1,255),math.random(1,255)}
end

function lovr.draw()
	for k, controller in pairs(controllers) do
		local x, y, z = controller:getPosition()
		lovr.graphics.setColor(colors[i])
		lovr.graphics.cube("fill", x, y, z, 0.2, controller:getOrientation())
	end
end
