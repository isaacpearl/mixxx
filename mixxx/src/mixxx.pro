#
# Options (comment out what's not wanted)
#
# ALSA
#SOURCES += playeralsa.cpp
#HEADERS += playeralsa.h
#DEFINES += __ALSA__
#unix:LIBS += -lasound

# PortAudio
SOURCES += playerportaudio.cpp
HEADERS += playerportaudio.h
DEFINES += __PORTAUDIO__
unix:LIBS += -lportaudio
win32:LIBS += ../lib/PAstaticDSD.lib dsound.lib 

# PortMidi
DEFINES += __PORTMIDI__
unix:LIBS += -lportmidi -lporttime
win32:LIBS += ../lib/portmidi.lib ../lib/porttime.lib ../lib/libmad.lib

#
# End of options
#

SOURCES	+= controllogpotmeter.cpp controlobject.cpp controlpotmeter.cpp controlpushbutton.cpp controlrotary.cpp dlgchannel.cpp dlgplaycontrol.cpp dlgplaylist.cpp dlgmaster.cpp enginebuffer.cpp engineclipping.cpp enginefilterlbh.cpp enginefilterrbj.cpp engineiirfilter.cpp engineobject.cpp enginepregain.cpp main.cpp midiobject.cpp mixxx.cpp mixxxdoc.cpp mixxxview.cpp player.cpp qknob.cpp soundsource.cpp soundsourceheavymp3.cpp monitor.cpp enginechannel.cpp enginemaster.cpp
HEADERS	+= controllogpotmeter.h controlobject.h controlpotmeter.h controlpushbutton.h controlrotary.h defs.h dlgchannel.h dlgplaycontrol.h dlgplaylist.h dlgmaster.h enginebuffer.h engineclipping.h enginefilterlbh.h enginefilterrbj.h engineiirfilter.h engineobject.h enginepregain.h midiobject.h mixxx.h mixxxdoc.h mixxxview.h player.h qknob.h soundsource.h soundsourceheavymp3.h monitor.h enginechannel.h enginemaster.h
unix {
  UI_DIR = .ui
  MOC_DIR = .moc
  OBJECTS_DIR = .obj
  LIBS	+= -lmad -laudiofile
}
win32 {
  INCLUDEPATH += ../portmidi/
  INCLUDEPATH += ../mad-0.14.2b
  INCLUDEPATH += ../portaudio/pa_common
  INCLUDEPATH += .
  QMAKE_CXXFLAGS += -GX
  QMAKE_LFLAGS += /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmtd /NODEFAULTLIB:msvcrt.lib
}
FORMS	= dlgchanneldlg.ui dlgplaycontroldlg.ui dlgplaylistdlg.ui dlgmasterdlg.ui
IMAGES	= filesave.xpm 
TEMPLATE = app
CONFIG	+= qt warn_on thread debug
DBFILE	= mixxx.db
LANGUAGE	= C++

# Profiling
#QMAKE_CXXFLAGS_DEBUG += -pg
#QMAKE_LFLAGS_DEBUG += -pg
