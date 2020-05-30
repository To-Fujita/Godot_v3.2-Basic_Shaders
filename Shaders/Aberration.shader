shader_type canvas_item;
// Aberration Filter

uniform float _amount: hint_range(0.0, 5.0) = 0.55;
uniform float _centerFade: hint_range(0.0, 1.0) = 0.154;
uniform vec2 _aberrationCenter = vec2(0.5, 0.5);

void fragment(){
	vec2 coords = UV - _aberrationCenter;
	float amount = _amount * 0.1 * mix(dot(coords, coords), 1.0, _centerFade);
	
	vec4 color = texture(SCREEN_TEXTURE, SCREEN_UV);
	color.r = texture(SCREEN_TEXTURE, vec2(SCREEN_UV.x + amount, SCREEN_UV.y)).r;
	color.b = texture(SCREEN_TEXTURE, vec2(SCREEN_UV.x - amount, SCREEN_UV.y)).b;
	
	COLOR = color; 
}