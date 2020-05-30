shader_type canvas_item;
// Average Filter

render_mode blend_mix;

uniform float _size : hint_range(0, 100) = 10;

void fragment( )
{
	float Count = (_size * 2.0 + 1.0) * (_size * 2.0 + 1.0);
	vec4 col = vec4(0.0);
	for (int i = int(-_size); i <= int(_size); i++) {
		for (int j = int(-_size); j <= int(_size); j++) {
			vec2 quat_xy = vec2( float(i) * SCREEN_PIXEL_SIZE.x, float(j) * SCREEN_PIXEL_SIZE.y );
			col += textureLod(SCREEN_TEXTURE, SCREEN_UV + quat_xy, 0.0) / Count;
		}
	}
	
	COLOR = col;
	
}
