shader_type canvas_item;
// Edge Detection with Prewitt Filter

uniform float _size : hint_range(0, 100) = 10;
uniform float _threshold : hint_range(0, 50) = 10;

void fragment() {
	float size = _size /10000.0;
	float limit = _threshold / 100.0;
	
	float depth_left_up = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(-size, -size)).r;
	float depth_left = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(-size, 0)).r;
	float depth_left_down = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(-size, size)).r;
	float depth_right_up = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(size, -size)).r;
	float depth_right = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(size, 0)).r;
	float depth_right_down = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(size, size)).r;
	float depth_down = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(0, -size)).r;
	float depth_up = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(0, size)).r;
	float depth_diff_h = depth_left_up * -1.0 + depth_left * -1.0 + depth_left_down * -1.0 + depth_right_up + depth_right * 1.0 + depth_right_down;
	float depth_diff_v = depth_left_up * -1.0 + depth_up * -1.0 + depth_right_up * -1.0 + depth_left_down + depth_down * 1.0 + depth_right_down;
	float depth_diff = sqrt(depth_diff_h * depth_diff_h + depth_diff_v * depth_diff_v);
	
	if (depth_diff > limit) {
		COLOR.rgb = vec3(0.0, 0.0, 0.0);
	} else {
		COLOR.rgb = vec3(1.0, 1.0, 1.0);
	}
}
