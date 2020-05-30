shader_type canvas_item;
// Mirage Filter

uniform float _frequency : hint_range(0, 200) = 60;
uniform float _depth: hint_range(0, 50) = 5;

void fragment() {
	vec2 uv = SCREEN_UV;
	uv.x += sin(uv.y * _frequency + TIME) * _depth / 1000.0;
	uv.x = clamp(uv.x, 0.0, 1.0);
	vec3 col = textureLod(SCREEN_TEXTURE, uv, 0.0).rgb;
	
	COLOR.rgb = col;
}
