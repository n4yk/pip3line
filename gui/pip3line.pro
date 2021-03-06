# Released as open source by Gabriel Caudrelier
#
# Developed by Gabriel Caudrelier, gabriel dot caudrelier at gmail dot com
#
# https://github.com/metrodango/pip3line
#
# Released under AGPL see LICENSE for more information


QT       += core gui xml network concurrent
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += debug WITH_THREAD c++11 warn_on

#CONFIG += CONF_SCINTILLA
CONFIG += CONF_ADDR_SANITIZER
#CONFIG += CONF_MEMORY_SANITIZER
#CONFIG += CONF_THREAD_SANITIZER

TARGET = pip3line
TEMPLATE = app

INCLUDEPATH +="../libtransform"

unix {
   LIBS += -L"../bin" -ltransform
    CONF_SCINTILLA {
        DEFINES += SCINTILLA
        LIBS += -lqscintilla2
    }

    CONF_ADDR_SANITIZER {
        QMAKE_CXXFLAGS += -fsanitize=address
        LIBS += -lasan
    }

    CONF_THREAD_SANITIZER {
        QMAKE_CXXFLAGS += -fsanitize=thread
        LIBS += -ltsan
    }
}

win32 {
    LIBS += -L"../lib" -ltransform
}

DESTDIR = ../bin

SOURCES += main.cpp\
        mainwindow.cpp \
    transformwidget.cpp \
    messagedialog.cpp \
    aboutdialog.cpp \
    analysedialog.cpp \
    regexphelpdialog.cpp \
    loggerwidget.cpp \
    infodialog.cpp \
    massprocessingdialog.cpp \
    screeniodevice.cpp \
    settingsdialog.cpp \
    downloadmanager.cpp \
    pluginconfwidget.cpp \
    guihelper.cpp \
    maintabs.cpp \
    debugdialog.cpp \
    floatingdialog.cpp \
    quickviewdialog.cpp \
    quickviewitem.cpp \
    quickviewitemconfig.cpp \
    textinputdialog.cpp \
    comparisondialog.cpp \
    newbytedialog.cpp \
    ../tools/tcpserver.cpp \
    ../tools/streamprocessor.cpp \
    ../tools/textprocessor.cpp \
    ../tools/processor.cpp \
    ../tools/binaryprocessor.cpp \
    ../tools/serverabstract.cpp \
    ../tools/pipeserver.cpp \
    tabs/tababstract.cpp \
    tabs/generictab.cpp \
    tabs/transformsgui.cpp \
    tabs/randomaccesstab.cpp \
    sources/bytesourceabstract.cpp \
    sources/basicsource.cpp \
    sources/filewidget.cpp \
    sources/currentmemorysource.cpp \
    sources/largerandomaccesssource.cpp \
    views/hexview.cpp \
    views/textview.cpp \
    views/singleviewabstract.cpp \
    views/bytetableview.cpp \
    views/byteitemmodel.cpp \
    shared/offsetgotowidget.cpp \
    shared/searchwidget.cpp \
    shared/readonlybutton.cpp \
    shared/bytesourceguibutton.cpp \
    shared/clearallmarkingsbutton.cpp \
    appdialog.cpp \
    sources/memorywidget.cpp \
    ../tools/processingstats.cpp \
    shared/detachtabbutton.cpp \
    sources/largefile.cpp \
    sources/searchabstract.cpp \
    shared/universalreceiverbutton.cpp \
    shared/messagepanelwidget.cpp \
    sources/intermediatesource.cpp \
    shared/searchresultswidget.cpp \
    state/stateorchestrator.cpp \
    state/basestateabstract.cpp \
    state/closingstate.cpp \
    state/statedialog.cpp \
    sources/blocksources/blockssource.cpp \
    state/statestatuswidget.cpp \
    views/foldedview.cpp \
    sources/blocksources/ipblockssources.cpp \
    shared/guiconst.cpp \
    tabs/packetanalyser/packet.cpp \
    tabs/packetanalyser/memorypacketmodel.cpp \
    tabs/packetanalyser/packetmodelabstract.cpp \
    tabs/packetanalysertab.cpp \
    tabs/packetanalyser/importexportdialog.cpp \
    tabs/packetanalyser/importexportworker.cpp \
    tabs/packetanalyser/packetstyleditemdelegate.cpp \
    tabs/packetanalyser/packetsortfilterproxymodel.cpp \
    tabs/packetanalyser/packetanalyseroptionsdialog.cpp \
    pcapio/pcapdef.cpp \
    pcapio/pcapio.cpp \
    pcapio/pcapngio.cpp \
    tabs/packetanalyser/sourcesorchestatorabstract.cpp \
    tabs/packetanalyser/singlesourceorchestrator.cpp \
    shared/newviewbutton.cpp \
    shared/newviewmenu.cpp \
    shared/sslconf.cpp \
    shared/ssloptionswidget.cpp \
    sources/blocksources/connectionsinfoswidget.cpp \
    sources/blocksources/udpserverlistener.cpp \
    sources/blocksources/ipnetworkserverwidget.cpp \
    sources/blocksources/connectionswidget.cpp \
    tabs/packetanalyser/orchestratorchooser.cpp \
    shared/defaultcontrolgui.cpp \
    shared/defaultdialog.cpp \
    shared/sendtomenu.cpp \
    sources/blocksources/udpclientlistener.cpp \
    tabs/packetanalyser/proxyorchestrator.cpp \
    sources/blocksources/tlsserverlistener.cpp \
    sources/blocksources/tlsclientlistener.cpp \
    sources/blocksources/ipnetworkclientwidget.cpp \
    sources/blocksources/baseblocksourcewidget.cpp \
    tabs/packetanalyser/externalproxyorchestrator.cpp \
    shared/transformselectorwidget.cpp \
    sources/blocksources/socksproxyhelper.cpp \
    sources/blocksources/connectiondetails.cpp \
    tabs/packetanalyser/socksorchestrator.cpp

HEADERS  += mainwindow.h \
    transformwidget.h \
    aboutdialog.h \
    messagedialog.h \
    analysedialog.h \
    regexphelpdialog.h \
    loggerwidget.h \
    infodialog.h \
    massprocessingdialog.h \
    screeniodevice.h \
    comparisondialog.h \
    textinputdialog.h \
    settingsdialog.h \
    downloadmanager.h \
    pluginconfwidget.h \
    guihelper.h \
    maintabs.h \
    floatingdialog.h \
    quickviewdialog.h \
    quickviewitem.h \
    quickviewitemconfig.h \
    newbytedialog.h \
    debugdialog.h \
    ../version.h \
    ../tools/textprocessor.h \
    ../tools/processor.h \
    ../tools/binaryprocessor.h \
    ../tools/tcpserver.h \
    ../tools/streamprocessor.h \
    ../tools/pipeserver.h \
    ../tools/serverabstract.h \
    tabs/tababstract.h \
    tabs/generictab.h \
    tabs/randomaccesstab.h \
    tabs/transformsgui.h \
    sources/currentmemorysource.h \
    sources/largerandomaccesssource.h \
    sources/filewidget.h \
    sources/bytesourceabstract.h \
    sources/basicsource.h \
    views/hexview.h \
    views/textview.h \
    views/singleviewabstract.h \
    views/bytetableview.h \
    views/byteitemmodel.h \
    shared/offsetgotowidget.h \
    shared/searchwidget.h \
    shared/readonlybutton.h \
    shared/bytesourceguibutton.h \
    shared/clearallmarkingsbutton.h \
    appdialog.h \
    sources/memorywidget.h \
    ../tools/processingstats.h \
    shared/detachtabbutton.h \
    sources/largefile.h \
    sources/searchabstract.h \
    shared/universalreceiverbutton.h \
    shared/messagepanelwidget.h \
    sources/intermediatesource.h \
    shared/searchresultswidget.h \
    shared/guiconst.h \
    state/stateorchestrator.h \
    state/basestateabstract.h \
    state/closingstate.h \
    state/statedialog.h \
    sources/blocksources/blockssource.h \
    state/statestatuswidget.h \
    views/foldedview.h \
    sources/blocksources/ipblockssources.h \
    tabs/packetanalyser/packet.h \
    tabs/packetanalyser/memorypacketmodel.h \
    tabs/packetanalyser/packetmodelabstract.h \
    tabs/packetanalysertab.h \
    tabs/packetanalyser/importexportdialog.h \
    tabs/packetanalyser/importexportworker.h \
    tabs/packetanalyser/packetstyleditemdelegate.h \
    tabs/packetanalyser/packetsortfilterproxymodel.h \
    tabs/packetanalyser/packetanalyseroptionsdialog.h \
    pcapio/pcapdef.h \
    pcapio/pcapio.h \
    pcapio/pcapngio.h \
    tabs/packetanalyser/sourcesorchestatorabstract.h \
    tabs/packetanalyser/singlesourceorchestrator.h \
    shared/newviewbutton.h \
    shared/newviewmenu.h \
    shared/sslconf.h \
    shared/ssloptionswidget.h \
    sources/blocksources/connectionsinfoswidget.h \
    sources/blocksources/udpserverlistener.h \
    sources/blocksources/ipnetworkserverwidget.h \
    sources/blocksources/connectionswidget.h \
    tabs/packetanalyser/orchestratorchooser.h \
    shared/defaultcontrolgui.h \
    shared/defaultdialog.h \
    sources/blocksources/target.h \
    shared/sendtomenu.h \
    sources/blocksources/udpclientlistener.h \
    tabs/packetanalyser/proxyorchestrator.h \
    sources/blocksources/tlsserverlistener.h \
    sources/blocksources/tlsclientlistener.h \
    sources/blocksources/ipnetworkclientwidget.h \
    sources/blocksources/baseblocksourcewidget.h \
    tabs/packetanalyser/externalproxyorchestrator.h \
    shared/transformselectorwidget.h \
    sources/blocksources/socksproxyhelper.h \
    sources/blocksources/connectiondetails.h \
    tabs/packetanalyser/socksorchestrator.h

FORMS    += mainwindow.ui \
    transformwidget.ui \
    comparisondialog.ui \
    aboutdialog.ui \
    messagedialog.ui \
    regexphelpdialog.ui \
    analysedialog.ui \
    loggerwidget.ui \
    infodialog.ui \
    massprocessingdialog.ui \
    settingsdialog.ui \
    pluginconfwidget.ui \
    textinputdialog.ui \
    floatingdialog.ui \
    quickviewdialog.ui \
    quickviewitem.ui \
    quickviewitemconfig.ui \
    newbytedialog.ui \
    debugdialog.ui \
    views/hexview.ui \
    views/textview.ui \
    tabs/generictab.ui \
    tabs/randomaccesstab.ui \
    tabs/transformsgui.ui \
    sources/filewidget.ui \
    sources/memorywidget.ui \
    shared/messagepanelwidget.ui \
    shared/searchresultswidget.ui \
    state/statedialog.ui \
    state/statestatuswidget.ui \
    views/foldedview.ui \
    tabs/packetanalysertab.ui \
    tabs/packetanalyser/importexportdialog.ui \
    tabs/packetanalyser/packetanalyseroptionsdialog.ui \
    shared/transformdisplayconf.ui \
    shared/ssloptionswidget.ui \
    sources/blocksources/connectionsinfoswidget.ui \
    sources/blocksources/ipnetworkserverwidget.ui \
    sources/blocksources/connectionswidget.ui \
    shared/defaultcontrolgui.ui \
    shared/defaultdialog.ui \
    sources/blocksources/ipnetworkclientwidget.ui \
    sources/blocksources/baseblocksourcewidget.ui \
    shared/transformselectorwidget.ui

OTHER_FILES += icons/pip3line.png \
    win.rc \
    release.txt

RESOURCES += \
    gui_res.qrc

unix {
    ROOT_PATH = /usr/local
    target.path = $$ROOT_PATH/bin/
    desktop.path = /usr/share/applications
    desktop.files += pip3line.desktop
    icon.path = /usr/share/icons/hicolor/128x128/apps
    icon.files += icons/pip3line.png
    INSTALLS += target desktop icon
}

win32 {
    RC_FILE = win.rc
}
