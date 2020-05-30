shader_type canvas_item;
// Monochrome Filter

uniform vec4 _base : hint_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform float _red : hint_range(0, 1) = 0.3333;
uniform float _green : hint_range(0, 1) = 0.3333;
uniform float _blue : hint_range(0, 1) = 0.3333;


void fragment() {
	vec3 c = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	float v = dot(c, vec3(_red, _green, _blue));
	v = sqrt(v);
	COLOR.rgb = _base.rgb * v;
}
