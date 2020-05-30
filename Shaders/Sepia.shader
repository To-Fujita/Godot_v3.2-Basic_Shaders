shader_type canvas_item;
// Sepia Color Conversion

uniform float _red : hint_range(0, 1) = 0.3;
uniform float _green : hint_range(0, 1) = 0.6;
uniform float _blue : hint_range(0, 1) = 0.1;
uniform float _darkness : hint_range(0, 1) = 0.04;
uniform float _offset : hint_range(0, 1) = 0.05;

void fragment() {
	vec3 col = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	float gray = col.r * _red + col.g * _green + col.b * _blue - _darkness;
	col.rgb = vec3(gray + _offset, gray, gray - _offset);
	
	COLOR.rgb = col;
}
