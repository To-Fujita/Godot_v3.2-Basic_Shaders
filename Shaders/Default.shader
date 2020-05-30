shader_type canvas_item;
// Default Filter

uniform float _size : hint_range(0, 7) = 3.0;

void fragment() {
	COLOR.rgb = textureLod(SCREEN_TEXTURE, SCREEN_UV, _size).rgb;
}
