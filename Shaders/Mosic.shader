shader_type canvas_item;
// Mosic Conversion

uniform float _size : hint_range(0, 100) = 10.0;


void fragment( )
{
	vec2 moz = floor( FRAGCOORD.xy / _size ) * _size;
	vec4 temp = vec4(0.0);
	for (int i = 0; i < int(_size); i++) {
		for (int j = 0; j < int(_size); j++) {
			vec2 quat_xy = vec2( float(i), float(j) );
			temp += vec4((texelFetch( SCREEN_TEXTURE, ivec2( moz + quat_xy ), 0).xyz), 1.0);
		}
	}
	COLOR = vec4(temp.rgb / _size / _size, 1.0);
//	COLOR = vec4(temp.r / _size / _size, temp.g / _size / _size, temp.b / _size / _size, 1.0);
}
