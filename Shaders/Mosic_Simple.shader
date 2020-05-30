shader_type canvas_item;
// Simple Mosic Conversion

uniform float _size : hint_range(0, 100) = 10.0;


void fragment( )
{
	vec2 moz = floor( FRAGCOORD.xy / _size ) * _size;
	COLOR = vec4(( texelFetch( SCREEN_TEXTURE, ivec2( moz ), 0 ).xyz ), 1.0 );
}
