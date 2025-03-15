AM_CPPFLAGS = -I$(srcdir) -I$(srcdir)/modules -I$(srcdir)/libraries -I$(srcdir)/libraries/enet/libenet/include $(LOVE_INCLUDES) $(FILE_OFFSET)	$(openal_CFLAGS) $(SDL_CFLAGS) $(lua_CFLAGS) $(freetype2_CFLAGS)	$(zlib_CFLAGS) $(libmodplug_CFLAGS)	$(vorbisfile_CFLAGS) $(theora_CFLAGS)
AUTOMAKE_OPTIONS = subdir-objects
SUBDIRS =
SUFFIXES = .lua .lua.h
AM_LDFLAGS = -Wl,-q -ltaihen_stub -lSceSblSsMgr_stub

if LOVE_BUILD_EXE
# LÖVE executable
bin_PROGRAMS = love
#love_LDFLAGS =
love_LDADD = liblove.la $(lua_LIBS) -ltaihen_stub -lSceSblSsMgr_stub
love_SOURCES = love.cpp
love_LDFLAGS = -Wl,-q

if LOVE_TARGET_OSX
love_LIBTOOLFLAGS = --tag=OBJCXX
love_SOURCES += \
    ./common/macosx.mm
else
love_LIBTOOLFLAGS = --tag=CXX
endif
endif

# Compile scripts
.lua.lua.h:
	cd ./scripts; 	$(LUA_EXECUTABLE) auto.lua $<

# libLÖVE
lib_LTLIBRARIES = liblove.la
liblove_la_LDFLAGS = -module -export-dynamic $(LDFLAGS) -release $(PACKAGE_VERSION)  -Wl,-q
liblove_la_LIBADD = 	$(openal_LIBS) $(SDL_LIBS) $(freetype2_LIBS) $(lua_LIBS)	$(zlib_LIBS) $(libmodplug_LIBS)	$(vorbisfile_LIBS) $(theora_LIBS)

liblove_la_SOURCES = \
    ./common/android.cpp \
    ./common/android.h \
    ./common/b64.cpp \
    ./common/b64.h \
    ./common/Color.h \
    ./common/config.h \
    ./common/Data.cpp \
    ./common/Data.h \
    ./common/delay.cpp \
    ./common/delay.h \
    ./common/deprecation.cpp \
    ./common/deprecation.h \
    ./common/EnumMap.h \
    ./common/Exception.cpp \
    ./common/Exception.h \
    ./common/floattypes.cpp \
    ./common/floattypes.h \
    ./common/int.h \
    ./common/ios.h \
    ./common/macosx.h \
    ./common/math.h \
    ./common/Matrix.cpp \
    ./common/Matrix.h \
    ./common/memory.cpp \
    ./common/memory.h \
    ./common/Module.cpp \
    ./common/Module.h \
    ./common/Object.cpp \
    ./common/Object.h \
    ./common/Optional.h \
    ./common/pixelformat.cpp \
    ./common/pixelformat.h \
    ./common/Reference.cpp \
    ./common/Reference.h \
    ./common/runtime.cpp \
    ./common/runtime.h \
    ./common/Stream.cpp \
    ./common/Stream.h \
    ./common/StringMap.cpp \
    ./common/StringMap.h \
    ./common/types.cpp \
    ./common/types.h \
    ./common/utf8.cpp \
    ./common/utf8.h \
    ./common/Variant.cpp \
    ./common/Variant.h \
    ./common/Vector.cpp \
    ./common/Vector.h \
    ./common/version.h \
    ./scripts/auto.lua \
    ./scripts/nogame.lua \
    ./scripts/nogame.lua.h

liblove_module_audio = \
    ./modules/audio/Audio.cpp \
    ./modules/audio/Audio.h \
    ./modules/audio/Effect.cpp \
    ./modules/audio/Effect.h \
    ./modules/audio/Filter.cpp \
    ./modules/audio/Filter.h \
    ./modules/audio/null/Audio.cpp \
    ./modules/audio/null/Audio.h \
    ./modules/audio/null/RecordingDevice.cpp \
    ./modules/audio/null/RecordingDevice.h \
    ./modules/audio/null/Source.cpp \
    ./modules/audio/null/Source.h \
    ./modules/audio/openal/Audio.cpp \
    ./modules/audio/openal/Audio.h \
    ./modules/audio/openal/Effect.cpp \
    ./modules/audio/openal/Effect.h \
    ./modules/audio/openal/Filter.cpp \
    ./modules/audio/openal/Filter.h \
    ./modules/audio/openal/Pool.cpp \
    ./modules/audio/openal/Pool.h \
    ./modules/audio/openal/RecordingDevice.cpp \
    ./modules/audio/openal/RecordingDevice.h \
    ./modules/audio/openal/Source.cpp \
    ./modules/audio/openal/Source.h \
    ./modules/audio/RecordingDevice.cpp \
    ./modules/audio/RecordingDevice.h \
    ./modules/audio/Source.cpp \
    ./modules/audio/Source.h \
    ./modules/audio/wrap_Audio.cpp \
    ./modules/audio/wrap_Audio.h \
    ./modules/audio/wrap_RecordingDevice.cpp \
    ./modules/audio/wrap_RecordingDevice.h \
    ./modules/audio/wrap_Source.cpp \
    ./modules/audio/wrap_Source.h

liblove_module_data = \
    ./modules/data/ByteData.cpp \
    ./modules/data/ByteData.h \
    ./modules/data/CompressedData.cpp \
    ./modules/data/CompressedData.h \
    ./modules/data/Compressor.cpp \
    ./modules/data/Compressor.h \
    ./modules/data/DataModule.cpp \
    ./modules/data/DataModule.h \
    ./modules/data/DataView.cpp \
    ./modules/data/DataView.h \
    ./modules/data/HashFunction.cpp \
    ./modules/data/HashFunction.h \
    ./modules/data/wrap_ByteData.cpp \
    ./modules/data/wrap_ByteData.h \
    ./modules/data/wrap_CompressedData.cpp \
    ./modules/data/wrap_CompressedData.h \
    ./modules/data/wrap_Data.cpp \
    ./modules/data/wrap_Data.h \
    ./modules/data/wrap_Data.lua \
    ./modules/data/wrap_DataModule.cpp \
    ./modules/data/wrap_DataModule.h \
    ./modules/data/wrap_DataView.cpp \
    ./modules/data/wrap_DataView.h

liblove_module_event = \
    ./modules/event/Event.cpp \
    ./modules/event/Event.h \
    ./modules/event/sdl/Event.cpp \
    ./modules/event/sdl/Event.h \
    ./modules/event/wrap_Event.cpp \
    ./modules/event/wrap_Event.h \
    ./modules/event/wrap_Event.lua

liblove_module_filesystem = \
    ./modules/filesystem/DroppedFile.cpp \
    ./modules/filesystem/DroppedFile.h \
    ./modules/filesystem/File.cpp \
    ./modules/filesystem/FileData.cpp \
    ./modules/filesystem/FileData.h \
    ./modules/filesystem/File.h \
    ./modules/filesystem/Filesystem.cpp \
    ./modules/filesystem/Filesystem.h \
    ./modules/filesystem/physfs/File.cpp \
    ./modules/filesystem/physfs/File.h \
    ./modules/filesystem/physfs/Filesystem.cpp \
    ./modules/filesystem/physfs/Filesystem.h \
    ./modules/filesystem/physfs/PhysfsIo.cpp \
    ./modules/filesystem/physfs/PhysfsIo.h \
    ./modules/filesystem/wrap_DroppedFile.cpp \
    ./modules/filesystem/wrap_DroppedFile.h \
    ./modules/filesystem/wrap_File.cpp \
    ./modules/filesystem/wrap_FileData.cpp \
    ./modules/filesystem/wrap_FileData.h \
    ./modules/filesystem/wrap_File.h \
    ./modules/filesystem/wrap_Filesystem.cpp \
    ./modules/filesystem/wrap_Filesystem.h

liblove_module_font = \
    ./modules/font/BMFontRasterizer.cpp \
    ./modules/font/BMFontRasterizer.h \
    ./modules/font/Font.cpp \
    ./modules/font/Font.h \
    ./modules/font/freetype/Font.cpp \
    ./modules/font/freetype/Font.h \
    ./modules/font/freetype/TrueTypeRasterizer.cpp \
    ./modules/font/freetype/TrueTypeRasterizer.h \
    ./modules/font/GlyphData.cpp \
    ./modules/font/GlyphData.h \
    ./modules/font/ImageRasterizer.cpp \
    ./modules/font/ImageRasterizer.h \
    ./modules/font/Rasterizer.cpp \
    ./modules/font/Rasterizer.h \
    ./modules/font/TrueTypeRasterizer.cpp \
    ./modules/font/TrueTypeRasterizer.h \
    ./modules/font/Vera.ttf.h \
    ./modules/font/wrap_Font.cpp \
    ./modules/font/wrap_Font.h \
    ./modules/font/wrap_GlyphData.cpp \
    ./modules/font/wrap_GlyphData.h \
    ./modules/font/wrap_Rasterizer.cpp \
    ./modules/font/wrap_Rasterizer.h

liblove_module_graphics = \
    ./modules/graphics/Buffer.cpp \
    ./modules/graphics/Buffer.h \
    ./modules/graphics/Canvas.cpp \
    ./modules/graphics/Canvas.h \
    ./modules/graphics/Deprecations.cpp \
    ./modules/graphics/Deprecations.h \
    ./modules/graphics/depthstencil.cpp \
    ./modules/graphics/depthstencil.h \
    ./modules/graphics/Drawable.cpp \
    ./modules/graphics/Drawable.h \
    ./modules/graphics/Font.cpp \
    ./modules/graphics/Font.h \
    ./modules/graphics/Graphics.cpp \
    ./modules/graphics/Graphics.h \
    ./modules/graphics/Image.cpp \
    ./modules/graphics/Image.h \
    ./modules/graphics/Mesh.cpp \
    ./modules/graphics/Mesh.h \
    ./modules/graphics/opengl/Buffer.cpp \
    ./modules/graphics/opengl/Buffer.h \
    ./modules/graphics/opengl/Canvas.cpp \
    ./modules/graphics/opengl/Canvas.h \
    ./modules/graphics/opengl/FenceSync.cpp \
    ./modules/graphics/opengl/FenceSync.h \
    ./modules/graphics/opengl/Graphics.cpp \
    ./modules/graphics/opengl/Graphics.h \
    ./modules/graphics/opengl/Image.cpp \
    ./modules/graphics/opengl/Image.h \
    ./modules/graphics/opengl/OpenGL.cpp \
    ./modules/graphics/opengl/OpenGL.h \
    ./modules/graphics/opengl/Shader.cpp \
    ./modules/graphics/opengl/Shader.h \
    ./modules/graphics/opengl/ShaderStage.cpp \
    ./modules/graphics/opengl/ShaderStage.h \
    ./modules/graphics/opengl/StreamBuffer.cpp \
    ./modules/graphics/opengl/StreamBuffer.h \
    ./modules/graphics/ParticleSystem.cpp \
    ./modules/graphics/ParticleSystem.h \
    ./modules/graphics/Polyline.cpp \
    ./modules/graphics/Polyline.h \
    ./modules/graphics/Quad.cpp \
    ./modules/graphics/Quad.h \
    ./modules/graphics/Resource.h \
    ./modules/graphics/Shader.cpp \
    ./modules/graphics/Shader.h \
    ./modules/graphics/ShaderStage.cpp \
    ./modules/graphics/ShaderStage.h \
    ./modules/graphics/SpriteBatch.cpp \
    ./modules/graphics/SpriteBatch.h \
    ./modules/graphics/StreamBuffer.cpp \
    ./modules/graphics/StreamBuffer.h \
    ./modules/graphics/Text.cpp \
    ./modules/graphics/Text.h \
    ./modules/graphics/Texture.cpp \
    ./modules/graphics/Texture.h \
    ./modules/graphics/vertex.cpp \
    ./modules/graphics/vertex.h \
    ./modules/graphics/Video.cpp \
    ./modules/graphics/Video.h \
    ./modules/graphics/Volatile.cpp \
    ./modules/graphics/Volatile.h \
    ./modules/graphics/wrap_Canvas.cpp \
    ./modules/graphics/wrap_Canvas.h \
    ./modules/graphics/wrap_Font.cpp \
    ./modules/graphics/wrap_Font.h \
    ./modules/graphics/wrap_Graphics.cpp \
    ./modules/graphics/wrap_Graphics.h \
    ./modules/graphics/wrap_Graphics.lua \
    ./modules/graphics/wrap_GraphicsShader.lua \
    ./modules/graphics/wrap_Image.cpp \
    ./modules/graphics/wrap_Image.h \
    ./modules/graphics/wrap_Mesh.cpp \
    ./modules/graphics/wrap_Mesh.h \
    ./modules/graphics/wrap_ParticleSystem.cpp \
    ./modules/graphics/wrap_ParticleSystem.h \
    ./modules/graphics/wrap_Quad.cpp \
    ./modules/graphics/wrap_Quad.h \
    ./modules/graphics/wrap_Shader.cpp \
    ./modules/graphics/wrap_Shader.h \
    ./modules/graphics/wrap_SpriteBatch.cpp \
    ./modules/graphics/wrap_SpriteBatch.h \
    ./modules/graphics/wrap_Text.cpp \
    ./modules/graphics/wrap_Text.h \
    ./modules/graphics/wrap_Texture.cpp \
    ./modules/graphics/wrap_Texture.h \
    ./modules/graphics/wrap_Video.cpp \
    ./modules/graphics/wrap_Video.h \
    ./modules/graphics/wrap_Video.lua

liblove_module_image = \
    ./modules/image/CompressedImageData.cpp \
    ./modules/image/CompressedImageData.h \
    ./modules/image/CompressedSlice.cpp \
    ./modules/image/CompressedSlice.h \
    ./modules/image/FormatHandler.cpp \
    ./modules/image/FormatHandler.h \
    ./modules/image/Image.cpp \
    ./modules/image/ImageDataBase.cpp \
    ./modules/image/ImageDataBase.h \
    ./modules/image/ImageData.cpp \
    ./modules/image/ImageData.h \
    ./modules/image/Image.h \
    ./modules/image/magpie/ASTCHandler.cpp \
    ./modules/image/magpie/ASTCHandler.h \
    ./modules/image/magpie/ddsHandler.cpp \
    ./modules/image/magpie/ddsHandler.h \
    ./modules/image/magpie/EXRHandler.cpp \
    ./modules/image/magpie/EXRHandler.h \
    ./modules/image/magpie/KTXHandler.cpp \
    ./modules/image/magpie/KTXHandler.h \
    ./modules/image/magpie/PKMHandler.cpp \
    ./modules/image/magpie/PKMHandler.h \
    ./modules/image/magpie/PNGHandler.cpp \
    ./modules/image/magpie/PNGHandler.h \
    ./modules/image/magpie/PVRHandler.cpp \
    ./modules/image/magpie/PVRHandler.h \
    ./modules/image/magpie/STBHandler.cpp \
    ./modules/image/magpie/STBHandler.h \
    ./modules/image/wrap_CompressedImageData.cpp \
    ./modules/image/wrap_CompressedImageData.h \
    ./modules/image/wrap_Image.cpp \
    ./modules/image/wrap_ImageData.cpp \
    ./modules/image/wrap_ImageData.h \
    ./modules/image/wrap_ImageData.lua \
    ./modules/image/wrap_Image.h

liblove_module_joystick = \
    ./modules/joystick/Joystick.cpp \
    ./modules/joystick/Joystick.h \
    ./modules/joystick/JoystickModule.h \
    ./modules/joystick/sdl/Joystick.cpp \
    ./modules/joystick/sdl/Joystick.h \
    ./modules/joystick/sdl/JoystickModule.cpp \
    ./modules/joystick/sdl/JoystickModule.h \
    ./modules/joystick/wrap_Joystick.cpp \
    ./modules/joystick/wrap_Joystick.h \
    ./modules/joystick/wrap_JoystickModule.cpp \
    ./modules/joystick/wrap_JoystickModule.h

liblove_module_keyboard = \
    ./modules/keyboard/Keyboard.cpp \
    ./modules/keyboard/Keyboard.h \
    ./modules/keyboard/sdl/Keyboard.cpp \
    ./modules/keyboard/sdl/Keyboard.h \
    ./modules/keyboard/wrap_Keyboard.cpp \
    ./modules/keyboard/wrap_Keyboard.h

liblove_module_love = \
    ./modules/love/arg.lua \
    ./modules/love/boot.lua \
    ./modules/love/callbacks.lua \
    ./modules/love/jitsetup.lua \
    ./modules/love/love.cpp \
    ./modules/love/love.h

liblove_module_math = \
    ./modules/math/BezierCurve.cpp \
    ./modules/math/BezierCurve.h \
    ./modules/math/MathModule.cpp \
    ./modules/math/MathModule.h \
    ./modules/math/RandomGenerator.cpp \
    ./modules/math/RandomGenerator.h \
    ./modules/math/Transform.cpp \
    ./modules/math/Transform.h \
    ./modules/math/wrap_BezierCurve.cpp \
    ./modules/math/wrap_BezierCurve.h \
    ./modules/math/wrap_Math.cpp \
    ./modules/math/wrap_Math.h \
    ./modules/math/wrap_Math.lua \
    ./modules/math/wrap_RandomGenerator.cpp \
    ./modules/math/wrap_RandomGenerator.h \
    ./modules/math/wrap_RandomGenerator.lua \
    ./modules/math/wrap_Transform.cpp \
    ./modules/math/wrap_Transform.h

liblove_module_mouse = \
    ./modules/mouse/Cursor.cpp \
    ./modules/mouse/Cursor.h \
    ./modules/mouse/Mouse.h \
    ./modules/mouse/sdl/Cursor.cpp \
    ./modules/mouse/sdl/Cursor.h \
    ./modules/mouse/sdl/Mouse.cpp \
    ./modules/mouse/sdl/Mouse.h \
    ./modules/mouse/wrap_Cursor.cpp \
    ./modules/mouse/wrap_Cursor.h \
    ./modules/mouse/wrap_Mouse.cpp \
    ./modules/mouse/wrap_Mouse.h

liblove_module_physics = \
    ./modules/physics/Body.cpp \
    ./modules/physics/Body.h \
    ./modules/physics/box2d/Body.cpp \
    ./modules/physics/box2d/Body.h \
    ./modules/physics/box2d/ChainShape.cpp \
    ./modules/physics/box2d/ChainShape.h \
    ./modules/physics/box2d/CircleShape.cpp \
    ./modules/physics/box2d/CircleShape.h \
    ./modules/physics/box2d/Contact.cpp \
    ./modules/physics/box2d/Contact.h \
    ./modules/physics/box2d/DistanceJoint.cpp \
    ./modules/physics/box2d/DistanceJoint.h \
    ./modules/physics/box2d/EdgeShape.cpp \
    ./modules/physics/box2d/EdgeShape.h \
    ./modules/physics/box2d/Fixture.cpp \
    ./modules/physics/box2d/Fixture.h \
    ./modules/physics/box2d/FrictionJoint.cpp \
    ./modules/physics/box2d/FrictionJoint.h \
    ./modules/physics/box2d/GearJoint.cpp \
    ./modules/physics/box2d/GearJoint.h \
    ./modules/physics/box2d/Joint.cpp \
    ./modules/physics/box2d/Joint.h \
    ./modules/physics/box2d/MotorJoint.cpp \
    ./modules/physics/box2d/MotorJoint.h \
    ./modules/physics/box2d/MouseJoint.cpp \
    ./modules/physics/box2d/MouseJoint.h \
    ./modules/physics/box2d/Physics.cpp \
    ./modules/physics/box2d/Physics.h \
    ./modules/physics/box2d/PolygonShape.cpp \
    ./modules/physics/box2d/PolygonShape.h \
    ./modules/physics/box2d/PrismaticJoint.cpp \
    ./modules/physics/box2d/PrismaticJoint.h \
    ./modules/physics/box2d/PulleyJoint.cpp \
    ./modules/physics/box2d/PulleyJoint.h \
    ./modules/physics/box2d/RevoluteJoint.cpp \
    ./modules/physics/box2d/RevoluteJoint.h \
    ./modules/physics/box2d/RopeJoint.cpp \
    ./modules/physics/box2d/RopeJoint.h \
    ./modules/physics/box2d/Shape.cpp \
    ./modules/physics/box2d/Shape.h \
    ./modules/physics/box2d/WeldJoint.cpp \
    ./modules/physics/box2d/WeldJoint.h \
    ./modules/physics/box2d/WheelJoint.cpp \
    ./modules/physics/box2d/WheelJoint.h \
    ./modules/physics/box2d/World.cpp \
    ./modules/physics/box2d/World.h \
    ./modules/physics/box2d/wrap_Body.cpp \
    ./modules/physics/box2d/wrap_Body.h \
    ./modules/physics/box2d/wrap_ChainShape.cpp \
    ./modules/physics/box2d/wrap_ChainShape.h \
    ./modules/physics/box2d/wrap_CircleShape.cpp \
    ./modules/physics/box2d/wrap_CircleShape.h \
    ./modules/physics/box2d/wrap_Contact.cpp \
    ./modules/physics/box2d/wrap_Contact.h \
    ./modules/physics/box2d/wrap_DistanceJoint.cpp \
    ./modules/physics/box2d/wrap_DistanceJoint.h \
    ./modules/physics/box2d/wrap_EdgeShape.cpp \
    ./modules/physics/box2d/wrap_EdgeShape.h \
    ./modules/physics/box2d/wrap_Fixture.cpp \
    ./modules/physics/box2d/wrap_Fixture.h \
    ./modules/physics/box2d/wrap_FrictionJoint.cpp \
    ./modules/physics/box2d/wrap_FrictionJoint.h \
    ./modules/physics/box2d/wrap_GearJoint.cpp \
    ./modules/physics/box2d/wrap_GearJoint.h \
    ./modules/physics/box2d/wrap_Joint.cpp \
    ./modules/physics/box2d/wrap_Joint.h \
    ./modules/physics/box2d/wrap_MotorJoint.cpp \
    ./modules/physics/box2d/wrap_MotorJoint.h \
    ./modules/physics/box2d/wrap_MouseJoint.cpp \
    ./modules/physics/box2d/wrap_MouseJoint.h \
    ./modules/physics/box2d/wrap_Physics.cpp \
    ./modules/physics/box2d/wrap_Physics.h \
    ./modules/physics/box2d/wrap_PolygonShape.cpp \
    ./modules/physics/box2d/wrap_PolygonShape.h \
    ./modules/physics/box2d/wrap_PrismaticJoint.cpp \
    ./modules/physics/box2d/wrap_PrismaticJoint.h \
    ./modules/physics/box2d/wrap_PulleyJoint.cpp \
    ./modules/physics/box2d/wrap_PulleyJoint.h \
    ./modules/physics/box2d/wrap_RevoluteJoint.cpp \
    ./modules/physics/box2d/wrap_RevoluteJoint.h \
    ./modules/physics/box2d/wrap_RopeJoint.cpp \
    ./modules/physics/box2d/wrap_RopeJoint.h \
    ./modules/physics/box2d/wrap_Shape.cpp \
    ./modules/physics/box2d/wrap_Shape.h \
    ./modules/physics/box2d/wrap_WeldJoint.cpp \
    ./modules/physics/box2d/wrap_WeldJoint.h \
    ./modules/physics/box2d/wrap_WheelJoint.cpp \
    ./modules/physics/box2d/wrap_WheelJoint.h \
    ./modules/physics/box2d/wrap_World.cpp \
    ./modules/physics/box2d/wrap_World.h \
    ./modules/physics/Joint.cpp \
    ./modules/physics/Joint.h \
    ./modules/physics/Shape.cpp \
    ./modules/physics/Shape.h

liblove_module_sound = \
    ./modules/sound/Decoder.cpp \
    ./modules/sound/Decoder.h \
    ./modules/sound/lullaby/CoreAudioDecoder.cpp \
    ./modules/sound/lullaby/CoreAudioDecoder.h \
    ./modules/sound/lullaby/FLACDecoder.cpp \
    ./modules/sound/lullaby/FLACDecoder.h \
    ./modules/sound/lullaby/GmeDecoder.cpp \
    ./modules/sound/lullaby/GmeDecoder.h \
    ./modules/sound/lullaby/ModPlugDecoder.cpp \
    ./modules/sound/lullaby/ModPlugDecoder.h \
    ./modules/sound/lullaby/Sound.cpp \
    ./modules/sound/lullaby/Sound.h \
    ./modules/sound/lullaby/VorbisDecoder.cpp \
    ./modules/sound/lullaby/VorbisDecoder.h \
    ./modules/sound/lullaby/WaveDecoder.cpp \
    ./modules/sound/lullaby/WaveDecoder.h \
    ./modules/sound/Sound.cpp \
    ./modules/sound/SoundData.cpp \
    ./modules/sound/SoundData.h \
    ./modules/sound/Sound.h \
    ./modules/sound/wrap_Decoder.cpp \
    ./modules/sound/wrap_Decoder.h \
    ./modules/sound/wrap_Sound.cpp \
    ./modules/sound/wrap_SoundData.cpp \
    ./modules/sound/wrap_SoundData.h \
    ./modules/sound/wrap_SoundData.lua \
    ./modules/sound/wrap_Sound.h

if !LOVE_NOMPG123
liblove_module_sound += \
	./modules/sound/lullaby/Mpg123Decoder.cpp \
	./modules/sound/lullaby/Mpg123Decoder.h
endif

liblove_module_system = \
    ./modules/system/sdl/System.cpp \
    ./modules/system/sdl/System.h \
    ./modules/system/System.cpp \
    ./modules/system/System.h \
    ./modules/system/wrap_System.cpp \
    ./modules/system/wrap_System.h

liblove_module_thread = \
    ./modules/thread/Channel.cpp \
    ./modules/thread/Channel.h \
    ./modules/thread/LuaThread.cpp \
    ./modules/thread/LuaThread.h \
    ./modules/thread/sdl/Thread.cpp \
    ./modules/thread/sdl/Thread.h \
    ./modules/thread/sdl/threads.cpp \
    ./modules/thread/sdl/threads.h \
    ./modules/thread/Thread.h \
    ./modules/thread/ThreadModule.cpp \
    ./modules/thread/ThreadModule.h \
    ./modules/thread/threads.cpp \
    ./modules/thread/threads.h \
    ./modules/thread/wrap_Channel.cpp \
    ./modules/thread/wrap_Channel.h \
    ./modules/thread/wrap_LuaThread.cpp \
    ./modules/thread/wrap_LuaThread.h \
    ./modules/thread/wrap_ThreadModule.cpp \
    ./modules/thread/wrap_ThreadModule.h

liblove_module_timer = \
    ./modules/timer/Timer.cpp \
    ./modules/timer/Timer.h \
    ./modules/timer/wrap_Timer.cpp \
    ./modules/timer/wrap_Timer.h

liblove_module_touch = \
    ./modules/touch/sdl/Touch.cpp \
    ./modules/touch/sdl/Touch.h \
    ./modules/touch/Touch.h \
    ./modules/touch/wrap_Touch.cpp \
    ./modules/touch/wrap_Touch.h

liblove_module_video = \
    ./modules/video/theora/OggDemuxer.cpp \
    ./modules/video/theora/OggDemuxer.h \
    ./modules/video/theora/TheoraVideoStream.cpp \
    ./modules/video/theora/TheoraVideoStream.h \
    ./modules/video/theora/Video.cpp \
    ./modules/video/theora/Video.h \
    ./modules/video/Video.h \
    ./modules/video/VideoStream.cpp \
    ./modules/video/VideoStream.h \
    ./modules/video/wrap_Video.cpp \
    ./modules/video/wrap_Video.h \
    ./modules/video/wrap_VideoStream.cpp \
    ./modules/video/wrap_VideoStream.h

liblove_module_window = \
    ./modules/window/sdl/Window.cpp \
    ./modules/window/sdl/Window.h \
    ./modules/window/Window.cpp \
    ./modules/window/Window.h \
    ./modules/window/wrap_Window.cpp \
    ./modules/window/wrap_Window.h

liblove_library_Box2D = \
    ./libraries/Box2D/Box2D.h \
    ./libraries/Box2D/Collision/b2BroadPhase.cpp \
    ./libraries/Box2D/Collision/b2BroadPhase.h \
    ./libraries/Box2D/Collision/b2CollideCircle.cpp \
    ./libraries/Box2D/Collision/b2CollideEdge.cpp \
    ./libraries/Box2D/Collision/b2CollidePolygon.cpp \
    ./libraries/Box2D/Collision/b2Collision.cpp \
    ./libraries/Box2D/Collision/b2Collision.h \
    ./libraries/Box2D/Collision/b2Distance.cpp \
    ./libraries/Box2D/Collision/b2Distance.h \
    ./libraries/Box2D/Collision/b2DynamicTree.cpp \
    ./libraries/Box2D/Collision/b2DynamicTree.h \
    ./libraries/Box2D/Collision/b2TimeOfImpact.cpp \
    ./libraries/Box2D/Collision/b2TimeOfImpact.h \
    ./libraries/Box2D/Collision/Shapes/b2ChainShape.cpp \
    ./libraries/Box2D/Collision/Shapes/b2ChainShape.h \
    ./libraries/Box2D/Collision/Shapes/b2CircleShape.cpp \
    ./libraries/Box2D/Collision/Shapes/b2CircleShape.h \
    ./libraries/Box2D/Collision/Shapes/b2EdgeShape.cpp \
    ./libraries/Box2D/Collision/Shapes/b2EdgeShape.h \
    ./libraries/Box2D/Collision/Shapes/b2PolygonShape.cpp \
    ./libraries/Box2D/Collision/Shapes/b2PolygonShape.h \
    ./libraries/Box2D/Collision/Shapes/b2Shape.h \
    ./libraries/Box2D/Common/b2BlockAllocator.cpp \
    ./libraries/Box2D/Common/b2BlockAllocator.h \
    ./libraries/Box2D/Common/b2Draw.cpp \
    ./libraries/Box2D/Common/b2Draw.h \
    ./libraries/Box2D/Common/b2GrowableStack.h \
    ./libraries/Box2D/Common/b2Math.cpp \
    ./libraries/Box2D/Common/b2Math.h \
    ./libraries/Box2D/Common/b2Settings.cpp \
    ./libraries/Box2D/Common/b2Settings.h \
    ./libraries/Box2D/Common/b2StackAllocator.cpp \
    ./libraries/Box2D/Common/b2StackAllocator.h \
    ./libraries/Box2D/Common/b2Timer.cpp \
    ./libraries/Box2D/Common/b2Timer.h \
    ./libraries/Box2D/Dynamics/b2Body.cpp \
    ./libraries/Box2D/Dynamics/b2Body.h \
    ./libraries/Box2D/Dynamics/b2ContactManager.cpp \
    ./libraries/Box2D/Dynamics/b2ContactManager.h \
    ./libraries/Box2D/Dynamics/b2Fixture.cpp \
    ./libraries/Box2D/Dynamics/b2Fixture.h \
    ./libraries/Box2D/Dynamics/b2Island.cpp \
    ./libraries/Box2D/Dynamics/b2Island.h \
    ./libraries/Box2D/Dynamics/b2TimeStep.h \
    ./libraries/Box2D/Dynamics/b2WorldCallbacks.cpp \
    ./libraries/Box2D/Dynamics/b2WorldCallbacks.h \
    ./libraries/Box2D/Dynamics/b2World.cpp \
    ./libraries/Box2D/Dynamics/b2World.h \
    ./libraries/Box2D/Dynamics/Contacts/b2ChainAndCircleContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2ChainAndCircleContact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2CircleContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2CircleContact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2Contact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2Contact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2ContactSolver.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2ContactSolver.h \
    ./libraries/Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.h \
    ./libraries/Box2D/Dynamics/Contacts/b2PolygonContact.cpp \
    ./libraries/Box2D/Dynamics/Contacts/b2PolygonContact.h \
    ./libraries/Box2D/Dynamics/Joints/b2DistanceJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2DistanceJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2FrictionJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2FrictionJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2GearJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2GearJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2Joint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2Joint.h \
    ./libraries/Box2D/Dynamics/Joints/b2MotorJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2MotorJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2MouseJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2MouseJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2PrismaticJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2PrismaticJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2PulleyJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2PulleyJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2RevoluteJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2RevoluteJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2RopeJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2RopeJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2WeldJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2WeldJoint.h \
    ./libraries/Box2D/Dynamics/Joints/b2WheelJoint.cpp \
    ./libraries/Box2D/Dynamics/Joints/b2WheelJoint.h \
    ./libraries/Box2D/Rope/b2Rope.cpp \
    ./libraries/Box2D/Rope/b2Rope.h

liblove_library_ddsparse = \
    ./libraries/ddsparse/ddsinfo.h \
    ./libraries/ddsparse/ddsparse.cpp \
    ./libraries/ddsparse/ddsparse.h

liblove_library_dr_flac = \
    ./libraries/dr_flac/dr_flac.h

liblove_library_enet = \
    ./libraries/enet/enet.cpp \
    ./libraries/enet/libenet/callbacks.c \
    ./libraries/enet/libenet/compress.c \
    ./libraries/enet/libenet/host.c \
    ./libraries/enet/libenet/include/enet/callbacks.h \
    ./libraries/enet/libenet/include/enet/enet.h \
    ./libraries/enet/libenet/include/enet/list.h \
    ./libraries/enet/libenet/include/enet/protocol.h \
    ./libraries/enet/libenet/include/enet/time.h \
    ./libraries/enet/libenet/include/enet/types.h \
    ./libraries/enet/libenet/include/enet/unix.h \
    ./libraries/enet/libenet/include/enet/utility.h \
    ./libraries/enet/libenet/include/enet/win32.h \
    ./libraries/enet/libenet/list.c \
    ./libraries/enet/libenet/packet.c \
    ./libraries/enet/libenet/peer.c \
    ./libraries/enet/libenet/protocol.c \
    ./libraries/enet/libenet/unix.c \
    ./libraries/enet/libenet/win32.c \
    ./libraries/enet/lua-enet.h

liblove_library_glad = \
    ./libraries/glad/glad.cpp \
    ./libraries/glad/gladfuncs.hpp \
    ./libraries/glad/glad.hpp

liblove_library_glslang = \
    ./libraries/glslang/glslang/GenericCodeGen/CodeGen.cpp \
    ./libraries/glslang/glslang/GenericCodeGen/Link.cpp \
    ./libraries/glslang/glslang/Include/arrays.h \
    ./libraries/glslang/glslang/Include/BaseTypes.h \
    ./libraries/glslang/glslang/Include/Common.h \
    ./libraries/glslang/glslang/Include/ConstantUnion.h \
    ./libraries/glslang/glslang/Include/InfoSink.h \
    ./libraries/glslang/glslang/Include/InitializeGlobals.h \
    ./libraries/glslang/glslang/Include/intermediate.h \
    ./libraries/glslang/glslang/Include/PoolAlloc.h \
    ./libraries/glslang/glslang/Include/ResourceLimits.h \
    ./libraries/glslang/glslang/Include/revision.h \
    ./libraries/glslang/glslang/Include/ShHandle.h \
    ./libraries/glslang/glslang/Include/Types.h \
    ./libraries/glslang/glslang/MachineIndependent/attribute.cpp \
    ./libraries/glslang/glslang/MachineIndependent/attribute.h \
    ./libraries/glslang/glslang/MachineIndependent/Constant.cpp \
    ./libraries/glslang/glslang/MachineIndependent/glslang_tab.cpp \
    ./libraries/glslang/glslang/MachineIndependent/glslang_tab.cpp.h \
    ./libraries/glslang/glslang/MachineIndependent/gl_types.h \
    ./libraries/glslang/glslang/MachineIndependent/InfoSink.cpp \
    ./libraries/glslang/glslang/MachineIndependent/Initialize.cpp \
    ./libraries/glslang/glslang/MachineIndependent/Initialize.h \
    ./libraries/glslang/glslang/MachineIndependent/Intermediate.cpp \
    ./libraries/glslang/glslang/MachineIndependent/intermOut.cpp \
    ./libraries/glslang/glslang/MachineIndependent/IntermTraverse.cpp \
    ./libraries/glslang/glslang/MachineIndependent/iomapper.cpp \
    ./libraries/glslang/glslang/MachineIndependent/iomapper.h \
    ./libraries/glslang/glslang/MachineIndependent/limits.cpp \
    ./libraries/glslang/glslang/MachineIndependent/linkValidate.cpp \
    ./libraries/glslang/glslang/MachineIndependent/LiveTraverser.h \
    ./libraries/glslang/glslang/MachineIndependent/localintermediate.h \
    ./libraries/glslang/glslang/MachineIndependent/parseConst.cpp \
    ./libraries/glslang/glslang/MachineIndependent/ParseContextBase.cpp \
    ./libraries/glslang/glslang/MachineIndependent/ParseHelper.cpp \
    ./libraries/glslang/glslang/MachineIndependent/ParseHelper.h \
    ./libraries/glslang/glslang/MachineIndependent/parseVersions.h \
    ./libraries/glslang/glslang/MachineIndependent/pch.cpp \
    ./libraries/glslang/glslang/MachineIndependent/pch.h \
    ./libraries/glslang/glslang/MachineIndependent/PoolAlloc.cpp \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/PpAtom.cpp \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/PpContext.cpp \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/PpContext.h \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/Pp.cpp \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/PpScanner.cpp \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/PpTokens.cpp \
    ./libraries/glslang/glslang/MachineIndependent/preprocessor/PpTokens.h \
    ./libraries/glslang/glslang/MachineIndependent/propagateNoContraction.cpp \
    ./libraries/glslang/glslang/MachineIndependent/propagateNoContraction.h \
    ./libraries/glslang/glslang/MachineIndependent/reflection.cpp \
    ./libraries/glslang/glslang/MachineIndependent/reflection.h \
    ./libraries/glslang/glslang/MachineIndependent/RemoveTree.cpp \
    ./libraries/glslang/glslang/MachineIndependent/RemoveTree.h \
    ./libraries/glslang/glslang/MachineIndependent/ScanContext.h \
    ./libraries/glslang/glslang/MachineIndependent/Scan.cpp \
    ./libraries/glslang/glslang/MachineIndependent/Scan.h \
    ./libraries/glslang/glslang/MachineIndependent/ShaderLang.cpp \
    ./libraries/glslang/glslang/MachineIndependent/SymbolTable.cpp \
    ./libraries/glslang/glslang/MachineIndependent/SymbolTable.h \
    ./libraries/glslang/glslang/MachineIndependent/Versions.cpp \
    ./libraries/glslang/glslang/MachineIndependent/Versions.h \
    ./libraries/glslang/glslang/OSDependent/osinclude.h \
    ./libraries/glslang/glslang/OSDependent/Unix/ossource.cpp \
    ./libraries/glslang/glslang/Public/ShaderLang.h \
    ./libraries/glslang/OGLCompilersDLL/InitializeDll.cpp \
    ./libraries/glslang/OGLCompilersDLL/InitializeDll.h

liblove_library_lodepng = \
    ./libraries/lodepng/lodepng.cpp \
    ./libraries/lodepng/lodepng.h

liblove_library_lua53 = \
    ./libraries/lua53/lprefix.h \
    ./libraries/lua53/lstrlib.c \
    ./libraries/lua53/lstrlib.h \
    ./libraries/lua53/lutf8lib.c \
    ./libraries/lua53/lutf8lib.h

liblove_library_luasocket = \
    ./libraries/luasocket/libluasocket/auxiliar.c \
    ./libraries/luasocket/libluasocket/auxiliar.h \
    ./libraries/luasocket/libluasocket/buffer.c \
    ./libraries/luasocket/libluasocket/buffer.h \
    ./libraries/luasocket/libluasocket/compat.c \
    ./libraries/luasocket/libluasocket/compat.h \
    ./libraries/luasocket/libluasocket/except.c \
    ./libraries/luasocket/libluasocket/except.h \
    ./libraries/luasocket/libluasocket/ftp.lua \
    ./libraries/luasocket/libluasocket/ftp.lua.h \
    ./libraries/luasocket/libluasocket/headers.lua \
    ./libraries/luasocket/libluasocket/headers.lua.h \
    ./libraries/luasocket/libluasocket/http.lua \
    ./libraries/luasocket/libluasocket/http.lua.h \
    ./libraries/luasocket/libluasocket/inet.c \
    ./libraries/luasocket/libluasocket/inet.h \
    ./libraries/luasocket/libluasocket/io.c \
    ./libraries/luasocket/libluasocket/io.h \
    ./libraries/luasocket/libluasocket/ltn12.lua \
    ./libraries/luasocket/libluasocket/ltn12.lua.h \
    ./libraries/luasocket/libluasocket/luasocket.c \
    ./libraries/luasocket/libluasocket/luasocket.h \
    ./libraries/luasocket/libluasocket/mbox.lua \
    ./libraries/luasocket/libluasocket/mbox.lua.h \
    ./libraries/luasocket/libluasocket/mime.c \
    ./libraries/luasocket/libluasocket/mime.h \
    ./libraries/luasocket/libluasocket/mime.lua \
    ./libraries/luasocket/libluasocket/mime.lua.h \
    ./libraries/luasocket/libluasocket/options.c \
    ./libraries/luasocket/libluasocket/options.h \
    ./libraries/luasocket/libluasocket/pierror.h \
    ./libraries/luasocket/libluasocket/select.c \
    ./libraries/luasocket/libluasocket/select.h \
    ./libraries/luasocket/libluasocket/serial.c \
    ./libraries/luasocket/libluasocket/smtp.lua \
    ./libraries/luasocket/libluasocket/smtp.lua.h \
    ./libraries/luasocket/libluasocket/socket.h \
    ./libraries/luasocket/libluasocket/socket.lua \
    ./libraries/luasocket/libluasocket/socket.lua.h \
    ./libraries/luasocket/libluasocket/tcp.c \
    ./libraries/luasocket/libluasocket/tcp.h \
    ./libraries/luasocket/libluasocket/timeout.c \
    ./libraries/luasocket/libluasocket/timeout.h \
    ./libraries/luasocket/libluasocket/tp.lua \
    ./libraries/luasocket/libluasocket/tp.lua.h \
    ./libraries/luasocket/libluasocket/udp.c \
    ./libraries/luasocket/libluasocket/udp.h \
    ./libraries/luasocket/libluasocket/unix.c \
    ./libraries/luasocket/libluasocket/unix.h \
    ./libraries/luasocket/libluasocket/unixtcp.c \
    ./libraries/luasocket/libluasocket/unixtcp.h \
    ./libraries/luasocket/libluasocket/unixudp.c \
    ./libraries/luasocket/libluasocket/unixudp.h \
    ./libraries/luasocket/libluasocket/url.lua \
    ./libraries/luasocket/libluasocket/url.lua.h \
    ./libraries/luasocket/libluasocket/usocket.c \
    ./libraries/luasocket/libluasocket/usocket.h \
    ./libraries/luasocket/luasocket.cpp \
    ./libraries/luasocket/luasocket.h

liblove_library_lz4 = \
    ./libraries/lz4/lz4.c \
    ./libraries/lz4/lz4.h \
    ./libraries/lz4/lz4hc.c \
    ./libraries/lz4/lz4hc.h \
    ./libraries/lz4/lz4opt.h

liblove_library_noise1234 = \
    ./libraries/noise1234/noise1234.cpp \
    ./libraries/noise1234/noise1234.h \
    ./libraries/noise1234/simplexnoise1234.cpp \
    ./libraries/noise1234/simplexnoise1234.h

liblove_library_physfs = \
    ./libraries/physfs/physfs_archiver_7z.c \
    ./libraries/physfs/physfs_archiver_dir.c \
    ./libraries/physfs/physfs_archiver_grp.c \
    ./libraries/physfs/physfs_archiver_hog.c \
    ./libraries/physfs/physfs_archiver_iso9660.c \
    ./libraries/physfs/physfs_archiver_mvl.c \
    ./libraries/physfs/physfs_archiver_qpak.c \
    ./libraries/physfs/physfs_archiver_slb.c \
    ./libraries/physfs/physfs_archiver_unpacked.c \
    ./libraries/physfs/physfs_archiver_vdf.c \
    ./libraries/physfs/physfs_archiver_wad.c \
    ./libraries/physfs/physfs_archiver_zip.c \
    ./libraries/physfs/physfs_byteorder.c \
    ./libraries/physfs/physfs.c \
    ./libraries/physfs/physfs_casefolding.h \
    ./libraries/physfs/physfs.h \
    ./libraries/physfs/physfs_internal.h \
    ./libraries/physfs/physfs_lzmasdk.h \
    ./libraries/physfs/physfs_miniz.h \
    ./libraries/physfs/physfs_platform_android.c \
    ./libraries/physfs/physfs_platform_haiku.cpp \
    ./libraries/physfs/physfs_platform_os2.c \
    ./libraries/physfs/physfs_platform_posix.c \
    ./libraries/physfs/physfs_platform_qnx.c \
    ./libraries/physfs/physfs_platforms.h \
    ./libraries/physfs/physfs_platform_unix.c \
    ./libraries/physfs/physfs_platform_vita.c \
    ./libraries/physfs/physfs_platform_windows.c \
    ./libraries/physfs/physfs_platform_winrt.cpp \
    ./libraries/physfs/physfs_unicode.c

liblove_library_stb = \
    ./libraries/stb/stb_image.h

liblove_library_tinyexr = \
    ./libraries/tinyexr/tinyexr.h

liblove_library_utf8 = \
    ./libraries/utf8/utf8/checked.h \
    ./libraries/utf8/utf8/core.h \
    ./libraries/utf8/utf8.h \
    ./libraries/utf8/utf8/unchecked.h

liblove_library_Wuff = \
    ./libraries/Wuff/wuff.c \
    ./libraries/Wuff/wuff_config.h \
    ./libraries/Wuff/wuff_convert.c \
    ./libraries/Wuff/wuff_convert.h \
    ./libraries/Wuff/wuff.h \
    ./libraries/Wuff/wuff_internal.c \
    ./libraries/Wuff/wuff_internal.h \
    ./libraries/Wuff/wuff_memory.c

liblove_library_xxHash = \
    ./libraries/xxHash/xxhash.c \
    ./libraries/xxHash/xxhash.h

if LOVE_MODULE_AUDIO
liblove_la_SOURCES += $(liblove_module_audio)
endif

if LOVE_MODULE_DATA
liblove_la_SOURCES += $(liblove_module_data)
endif

if LOVE_MODULE_EVENT
liblove_la_SOURCES += $(liblove_module_event)
endif

if LOVE_MODULE_FILESYSTEM
liblove_la_SOURCES += $(liblove_module_filesystem)
endif

if LOVE_MODULE_FONT
liblove_la_SOURCES += $(liblove_module_font)
endif

if LOVE_MODULE_GRAPHICS
liblove_la_SOURCES += $(liblove_module_graphics)
endif

if LOVE_MODULE_IMAGE
liblove_la_SOURCES += $(liblove_module_image)
endif

if LOVE_MODULE_JOYSTICK
liblove_la_SOURCES += $(liblove_module_joystick)
endif

if LOVE_MODULE_KEYBOARD
liblove_la_SOURCES += $(liblove_module_keyboard)
endif

if LOVE_MODULE_LOVE
liblove_la_SOURCES += $(liblove_module_love)
endif

if LOVE_MODULE_MATH
liblove_la_SOURCES += $(liblove_module_math)
endif

if LOVE_MODULE_MOUSE
liblove_la_SOURCES += $(liblove_module_mouse)
endif

if LOVE_MODULE_PHYSICS
liblove_la_SOURCES += $(liblove_module_physics)
endif

if LOVE_MODULE_SOUND
liblove_la_SOURCES += $(liblove_module_sound)
endif

if LOVE_MODULE_SYSTEM
liblove_la_SOURCES += $(liblove_module_system)
endif

if LOVE_MODULE_THREAD
liblove_la_SOURCES += $(liblove_module_thread)
endif

if LOVE_MODULE_TIMER
liblove_la_SOURCES += $(liblove_module_timer)
endif

if LOVE_MODULE_TOUCH
liblove_la_SOURCES += $(liblove_module_touch)
endif

if LOVE_MODULE_VIDEO
liblove_la_SOURCES += $(liblove_module_video)
endif

if LOVE_MODULE_WINDOW
liblove_la_SOURCES += $(liblove_module_window)
endif

if LOVE_LIBRARY_BOX2D
liblove_la_SOURCES += $(liblove_library_Box2D)
endif

if LOVE_LIBRARY_DDSPARSE
liblove_la_SOURCES += $(liblove_library_ddsparse)
endif

if LOVE_LIBRARY_DR_FLAC
liblove_la_SOURCES += $(liblove_library_dr_flac)
endif

if LOVE_LIBRARY_ENET
liblove_la_SOURCES += $(liblove_library_enet)
endif

if LOVE_LIBRARY_GLAD
liblove_la_SOURCES += $(liblove_library_glad)
endif

if LOVE_LIBRARY_GLSLANG
liblove_la_SOURCES += $(liblove_library_glslang)
endif

if LOVE_LIBRARY_LODEPNG
liblove_la_SOURCES += $(liblove_library_lodepng)
endif

if LOVE_LIBRARY_LUA53
liblove_la_SOURCES += $(liblove_library_lua53)
endif

if LOVE_LIBRARY_LUASOCKET
liblove_la_SOURCES += $(liblove_library_luasocket)
endif

if LOVE_LIBRARY_LZ4
liblove_la_SOURCES += $(liblove_library_lz4)
endif

if LOVE_LIBRARY_NOISE1234
liblove_la_SOURCES += $(liblove_library_noise1234)
endif

if LOVE_LIBRARY_PHYSFS
liblove_la_SOURCES += $(liblove_library_physfs)
endif

if LOVE_LIBRARY_STB
liblove_la_SOURCES += $(liblove_library_stb)
endif

if LOVE_LIBRARY_TINYEXR
liblove_la_SOURCES += $(liblove_library_tinyexr)
endif

if LOVE_LIBRARY_UTF8
liblove_la_SOURCES += $(liblove_library_utf8)
endif

if LOVE_LIBRARY_WUFF
liblove_la_SOURCES += $(liblove_library_Wuff)
endif

if LOVE_LIBRARY_XXHASH
liblove_la_SOURCES += $(liblove_library_xxHash)
endif

