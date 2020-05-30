shader_type canvas_item;
// Pixcelize Filter

uniform float _size_x : hint_range(0, 100) = 10;
uniform float _size_y : hint_range(0, 100) = 10;

void fragment() {
	vec2 uv = SCREEN_UV;
	uv -= mod(uv, vec2(_size_x / 1000.0, _size_y / 1000.0));
	
	COLOR.rgb = textureLod(SCREEN_TEXTURE, uv, 0.0).rgb;
}
