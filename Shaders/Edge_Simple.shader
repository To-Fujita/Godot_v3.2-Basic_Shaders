shader_type canvas_item;
// Edge Detection

uniform float _size : hint_range(0, 100) = 10;
uniform float _threshold : hint_range(0, 50) = 10;

void fragment() {
	float size = _size /10000.0;
	float limit = _threshold / 100.0;
//	vec3 col = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	
	float depth_left = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(-size, 0)).r;
	float depth_right = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(size, 0)).r;
	float depth_down = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(0, -size)).r;
	float depth_up = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(0, size)).r;
	float depth_diff = abs(depth_left - depth_right);
	depth_diff += abs(depth_up - depth_down);
	
	if (depth_diff > limit) {
		COLOR.rgb = vec3(0.0, 0.0, 0.0);
	} else {
		COLOR.rgb = vec3(1.0, 1.0, 1.0);
	}
}
