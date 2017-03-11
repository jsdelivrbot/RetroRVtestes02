// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = TexCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = TexCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP43;
vec4 _TMP31;
vec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec4 _r0099;
vec4 _r0109;
vec4 _r0119;
vec4 _r0129;
vec4 _r0139;
vec4 _r0149;
vec4 _TMP160;
vec4 _a0163;
vec4 _TMP166;
vec4 _a0169;
vec4 _TMP172;
vec4 _a0175;
vec4 _TMP178;
vec4 _a0181;
vec4 _TMP184;
vec4 _a0187;
vec4 _TMP190;
vec4 _a0193;
vec4 _TMP196;
vec4 _a0199;
vec4 _TMP202;
vec4 _a0205;
vec4 _TMP208;
vec4 _a0211;
vec4 _TMP214;
vec4 _a0217;
vec4 _TMP218;
vec4 _a0221;
vec4 _TMP222;
vec4 _a0225;
vec4 _TMP226;
vec4 _a0229;
vec4 _TMP230;
vec4 _a0233;
vec4 _TMP236;
vec4 _a0239;
vec4 _TMP240;
vec4 _a0243;
vec4 _TMP244;
vec4 _a0247;
vec4 _TMP248;
vec4 _a0251;
vec4 _TMP252;
vec4 _a0255;
vec4 _TMP256;
vec4 _a0259;
vec4 _TMP260;
vec4 _a0263;
vec4 _TMP264;
vec4 _a0267;
vec4 _TMP268;
vec4 _a0271;
vec4 _a0273;
vec4 _a0275;
vec4 _a0277;
vec3 _x0281;
vec3 _TMP282;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    vec3 _info;
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0099.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0099.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0099.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0099.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0109.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0109.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0109.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0109.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0119.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0119.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0119.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0119.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0129.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0129.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0129.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0129.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0139.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0139.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0139.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0139.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0149.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0149.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0149.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0149.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _a0163 = _r0099.wxyz - _r0099;
    _TMP160 = abs(_a0163);
    _TMP21 = bvec4(_TMP160.x < 1.50000000E+01, _TMP160.y < 1.50000000E+01, _TMP160.z < 1.50000000E+01, _TMP160.w < 1.50000000E+01);
    _a0169 = _r0099.zwxy - _r0099.yzwx;
    _TMP166 = abs(_a0169);
    _TMP22 = bvec4(_TMP166.x < 1.50000000E+01, _TMP166.y < 1.50000000E+01, _TMP166.z < 1.50000000E+01, _TMP166.w < 1.50000000E+01);
    _a0175 = _r0119 - _r0109.wxyz;
    _TMP172 = abs(_a0175);
    _TMP23 = bvec4(_TMP172.x < 1.50000000E+01, _TMP172.y < 1.50000000E+01, _TMP172.z < 1.50000000E+01, _TMP172.w < 1.50000000E+01);
    _a0181 = _r0099.wxyz - _r0129;
    _TMP178 = abs(_a0181);
    _TMP24 = bvec4(_TMP178.x < 1.50000000E+01, _TMP178.y < 1.50000000E+01, _TMP178.z < 1.50000000E+01, _TMP178.w < 1.50000000E+01);
    _a0187 = _r0099.zwxy - _r0139;
    _TMP184 = abs(_a0187);
    _TMP25 = bvec4(_TMP184.x < 1.50000000E+01, _TMP184.y < 1.50000000E+01, _TMP184.z < 1.50000000E+01, _TMP184.w < 1.50000000E+01);
    _a0193 = _r0119 - _r0109.zwxy;
    _TMP190 = abs(_a0193);
    _TMP26 = bvec4(_TMP190.x < 1.50000000E+01, _TMP190.y < 1.50000000E+01, _TMP190.z < 1.50000000E+01, _TMP190.w < 1.50000000E+01);
    _a0199 = _r0119 - _r0109;
    _TMP196 = abs(_a0199);
    _TMP27 = bvec4(_TMP196.x < 1.50000000E+01, _TMP196.y < 1.50000000E+01, _TMP196.z < 1.50000000E+01, _TMP196.w < 1.50000000E+01);
    _a0205 = _r0099 - _r0129.yzwx;
    _TMP202 = abs(_a0205);
    _TMP28 = bvec4(_TMP202.x < 1.50000000E+01, _TMP202.y < 1.50000000E+01, _TMP202.z < 1.50000000E+01, _TMP202.w < 1.50000000E+01);
    _a0211 = _r0099.yzwx - _r0139.wxyz;
    _TMP208 = abs(_a0211);
    _TMP29 = bvec4(_TMP208.x < 1.50000000E+01, _TMP208.y < 1.50000000E+01, _TMP208.z < 1.50000000E+01, _TMP208.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_r0119.x != _r0099.w && _r0119.x != _r0099.z && (!_TMP21.x && !_TMP22.x || _TMP23.x && !_TMP24.x && !_TMP25.x || _TMP26.x || _TMP27.x) && (_r0099.w != _r0149.y && _r0099.w != _r0109.w || _r0099.z != _r0149.x && _r0099.z != _r0109.w || _r0099.z != _r0109.z || _r0099.w != _r0109.x || _TMP28.x && _TMP29.x), _r0119.y != _r0099.x && _r0119.y != _r0099.w && (!_TMP21.y && !_TMP22.y || _TMP23.y && !_TMP24.y && !_TMP25.y || _TMP26.y || _TMP27.y) && (_r0099.x != _r0149.z && _r0099.x != _r0109.x || _r0099.w != _r0149.y && _r0099.w != _r0109.x || _r0099.w != _r0109.w || _r0099.x != _r0109.y || _TMP28.y && _TMP29.y), _r0119.z != _r0099.y && _r0119.z != _r0099.x && (!_TMP21.z && !_TMP22.z || _TMP23.z && !_TMP24.z && !_TMP25.z || _TMP26.z || _TMP27.z) && (_r0099.y != _r0149.w && _r0099.y != _r0109.y || _r0099.x != _r0149.z && _r0099.x != _r0109.y || _r0099.x != _r0109.x || _r0099.y != _r0109.z || _TMP28.z && _TMP29.z), _r0119.w != _r0099.z && _r0119.w != _r0099.y && (!_TMP21.w && !_TMP22.w || _TMP23.w && !_TMP24.w && !_TMP25.w || _TMP26.w || _TMP27.w) && (_r0099.z != _r0149.x && _r0099.z != _r0109.z || _r0099.y != _r0149.w && _r0099.y != _r0109.z || _r0099.y != _r0109.y || _r0099.z != _r0109.w || _TMP28.w && _TMP29.w));
    _interp_restriction_lv2_left = bvec4(_r0119.x != _r0109.z && _r0099.y != _r0109.z, _r0119.y != _r0109.w && _r0099.z != _r0109.w, _r0119.z != _r0109.x && _r0099.w != _r0109.x, _r0119.w != _r0109.y && _r0099.x != _r0109.y);
    _interp_restriction_lv2_up = bvec4(_r0119.x != _r0109.x && _r0099.x != _r0109.x, _r0119.y != _r0109.y && _r0099.y != _r0109.y, _r0119.z != _r0109.z && _r0099.z != _r0109.z, _r0119.w != _r0109.w && _r0099.w != _r0109.w);
    _a0217 = _r0119 - _r0109;
    _TMP214 = abs(_a0217);
    _a0221 = _r0119 - _r0109.zwxy;
    _TMP218 = abs(_a0221);
    _a0225 = _r0109.wxyz - _r0149;
    _TMP222 = abs(_a0225);
    _a0229 = _r0109.wxyz - _r0149.yzwx;
    _TMP226 = abs(_a0229);
    _a0233 = _r0099.zwxy - _r0099.wxyz;
    _TMP230 = abs(_a0233);
    _TMP30 = _TMP214 + _TMP218 + _TMP222 + _TMP226 + 4.00000000E+00*_TMP230;
    _a0239 = _r0099.zwxy - _r0099.yzwx;
    _TMP236 = abs(_a0239);
    _a0243 = _r0099.zwxy - _r0139;
    _TMP240 = abs(_a0243);
    _a0247 = _r0099.wxyz - _r0129;
    _TMP244 = abs(_a0247);
    _a0251 = _r0099.wxyz - _r0099;
    _TMP248 = abs(_a0251);
    _a0255 = _r0119 - _r0109.wxyz;
    _TMP252 = abs(_a0255);
    _TMP31 = _TMP236 + _TMP240 + _TMP244 + _TMP248 + 4.00000000E+00*_TMP252;
    _edr = bvec4(_TMP30.x < _TMP31.x && _interp_restriction_lv1.x, _TMP30.y < _TMP31.y && _interp_restriction_lv1.y, _TMP30.z < _TMP31.z && _interp_restriction_lv1.z, _TMP30.w < _TMP31.w && _interp_restriction_lv1.w);
    _a0259 = _r0099.wxyz - _r0109.zwxy;
    _TMP256 = abs(_a0259);
    _a0263 = _r0099.zwxy - _r0109;
    _TMP260 = abs(_a0263);
    _edr_left = bvec4((2.00000000E+00*_TMP256).x <= _TMP260.x && _interp_restriction_lv2_left.x && _edr.x, (2.00000000E+00*_TMP256).y <= _TMP260.y && _interp_restriction_lv2_left.y && _edr.y, (2.00000000E+00*_TMP256).z <= _TMP260.z && _interp_restriction_lv2_left.z && _edr.z, (2.00000000E+00*_TMP256).w <= _TMP260.w && _interp_restriction_lv2_left.w && _edr.w);
    _a0267 = _r0099.wxyz - _r0109.zwxy;
    _TMP264 = abs(_a0267);
    _a0271 = _r0099.zwxy - _r0109;
    _TMP268 = abs(_a0271);
    _edr_up = bvec4(_TMP264.x >= (2.00000000E+00*_TMP268).x && _interp_restriction_lv2_up.x && _edr.x, _TMP264.y >= (2.00000000E+00*_TMP268).y && _interp_restriction_lv2_up.y && _edr.y, _TMP264.z >= (2.00000000E+00*_TMP268).z && _interp_restriction_lv2_up.z && _edr.z, _TMP264.w >= (2.00000000E+00*_TMP268).w && _interp_restriction_lv2_up.w && _edr.w);
    _a0273 = vec4(float(_edr.x), float(_edr.y), float(_edr.z), float(_edr.w));
    _info.x = dot(_a0273, vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _a0275 = vec4(float(_edr_left.x), float(_edr_left.y), float(_edr_left.z), float(_edr_left.w));
    _info.y = dot(_a0275, vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _a0277 = vec4(float(_edr_up.x), float(_edr_up.y), float(_edr_up.z), float(_edr_up.w));
    _info.z = dot(_a0277, vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _x0281 = _info/vec3( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02);
    _TMP43 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0281);
    _TMP282 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP43);
    _ret_0 = vec4(_TMP282.x, _TMP282.y, _TMP282.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
