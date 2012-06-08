.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x15

.field static final TRANSACTION_addWindowToken:I = 0x13

.field static final TRANSACTION_blockInputEvents:I = 0x56

.field static final TRANSACTION_broadcastKeyinEvent:I = 0x53

.field static final TRANSACTION_broadcastMotionEvent:I = 0x54

.field static final TRANSACTION_broadcastTrackballEvent:I = 0x55

.field static final TRANSACTION_canStatusBarHide:I = 0xb

.field static final TRANSACTION_clearForcedDisplaySize:I = 0xa

.field static final TRANSACTION_clearIdleScreen:I = 0x5b

.field static final TRANSACTION_closeSystemDialogs:I = 0x30

.field static final TRANSACTION_disableKeyguard:I = 0x29

.field static final TRANSACTION_dismissKeyguard:I = 0x2f

.field static final TRANSACTION_executeAppTransition:I = 0x1d

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2b

.field static final TRANSACTION_forcePasswordTimeout:I = 0x6a

.field static final TRANSACTION_freezeRotation:I = 0x4a

.field static final TRANSACTION_getAnimationScale:I = 0x31

.field static final TRANSACTION_getAnimationScales:I = 0x32

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getDPadKeycodeState:I = 0x3e

.field static final TRANSACTION_getDPadScancodeState:I = 0x3a

.field static final TRANSACTION_getDisplaySize:I = 0x6

.field static final TRANSACTION_getIdleScreenLabel:I = 0x5e

.field static final TRANSACTION_getInputDevice:I = 0x41

.field static final TRANSACTION_getInputDeviceIds:I = 0x42

.field static final TRANSACTION_getKeycodeState:I = 0x3b

.field static final TRANSACTION_getKeycodeStateForDevice:I = 0x3c

.field static final TRANSACTION_getMaximumSizeDimension:I = 0x8

.field static final TRANSACTION_getPenSetting:I = 0x61

.field static final TRANSACTION_getPenWorkingMode:I = 0x62

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x49

.field static final TRANSACTION_getRealDisplaySize:I = 0x7

.field static final TRANSACTION_getRotation:I = 0x47

.field static final TRANSACTION_getScancodeState:I = 0x37

.field static final TRANSACTION_getScancodeStateForDevice:I = 0x38

.field static final TRANSACTION_getSwitchState:I = 0x35

.field static final TRANSACTION_getSwitchStateForDevice:I = 0x36

.field static final TRANSACTION_getTrackballKeycodeState:I = 0x3d

.field static final TRANSACTION_getTrackballScancodeState:I = 0x39

.field static final TRANSACTION_hasKeys:I = 0x40

.field static final TRANSACTION_hasNavigationBar:I = 0x51

.field static final TRANSACTION_hideIdleScreen:I = 0x5d

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x2e

.field static final TRANSACTION_injectInputEventNoWait:I = 0xf

.field static final TRANSACTION_injectKeyEvent:I = 0xc

.field static final TRANSACTION_injectPenEvent:I = 0x5f

.field static final TRANSACTION_injectPointerEvent:I = 0xd

.field static final TRANSACTION_injectTrackballEvent:I = 0xe

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x2c

.field static final TRANSACTION_isKeyguardSecure:I = 0x2d

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardIsShowing:I = 0x52

.field static final TRANSACTION_monitorInput:I = 0x3f

.field static final TRANSACTION_moveAppToken:I = 0x24

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x26

.field static final TRANSACTION_moveAppTokensToTop:I = 0x25

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overrideHtcGlAppTransAnim:I = 0x68

.field static final TRANSACTION_overrideHtcGlAppTransitionAnimation:I = 0x66

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_overrideZoomPointForHtcGlAppTransitionAnimation:I = 0x67

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x2a

.field static final TRANSACTION_removeAppToken:I = 0x23

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x4c

.field static final TRANSACTION_screenshotApplicationsRecent:I = 0x4d

.field static final TRANSACTION_setAnimationDuration:I = 0x64

.field static final TRANSACTION_setAnimationRate:I = 0x65

.field static final TRANSACTION_setAnimationScale:I = 0x33

.field static final TRANSACTION_setAnimationScales:I = 0x34

.field static final TRANSACTION_setAppGroupId:I = 0x16

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x1e

.field static final TRANSACTION_setAppVisibility:I = 0x20

.field static final TRANSACTION_setAppWillBeHidden:I = 0x1f

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplaySize:I = 0x9

.field static final TRANSACTION_setIdleScreen:I = 0x5a

.field static final TRANSACTION_setInTouchMode:I = 0x43

.field static final TRANSACTION_setLockScreenShowImmediately:I = 0x57

.field static final TRANSACTION_setNewConfiguration:I = 0x28

.field static final TRANSACTION_setPenSetting:I = 0x60

.field static final TRANSACTION_setPointerSpeed:I = 0x4f

.field static final TRANSACTION_setShowKeyguard:I = 0x58

.field static final TRANSACTION_setStatusBarTouchMode:I = 0x63

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x45

.field static final TRANSACTION_showIdleScreen:I = 0x5c

.field static final TRANSACTION_showKeyguardWithAnimation:I = 0x59

.field static final TRANSACTION_showMessageHandleViolation:I = 0x6b

.field static final TRANSACTION_showStrictModeViolation:I = 0x44

.field static final TRANSACTION_startAppFreezingScreen:I = 0x21

.field static final TRANSACTION_startHomeByHomeKey:I = 0x69

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x4e

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x22

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x4b

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x27

.field static final TRANSACTION_updateRotation:I = 0x46

.field static final TRANSACTION_waitForWindowDrawn:I = 0x50

.field static final TRANSACTION_watchRotation:I = 0x48


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/view/IWindowManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_be0

    .line 1206
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 48
    :sswitch_8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    goto :goto_7

    .line 53
    :sswitch_11
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v13

    .line 57
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v13, :cond_2d

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v1, 0x1

    goto :goto_7

    .line 58
    :cond_2d
    const/4 v1, 0x0

    goto :goto_26

    .line 63
    .end local v2           #_arg0:I
    .end local v13           #_result:Z
    :sswitch_2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v13

    .line 65
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v13, :cond_47

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v1, 0x1

    goto :goto_7

    .line 66
    :cond_47
    const/4 v1, 0x0

    goto :goto_40

    .line 71
    .end local v13           #_result:Z
    :sswitch_49
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v13

    .line 73
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v13, :cond_61

    const/4 v1, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v1, 0x1

    goto :goto_7

    .line 74
    :cond_61
    const/4 v1, 0x0

    goto :goto_5a

    .line 79
    .end local v13           #_result:Z
    :sswitch_63
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 83
    .local v2, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    .line 84
    .local v3, _arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v13

    .line 85
    .local v13, _result:Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v13, :cond_8f

    invoke-interface {v13}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 86
    :cond_8f
    const/4 v1, 0x0

    goto :goto_87

    .line 91
    .end local v2           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v3           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v13           #_result:Landroid/view/IWindowSession;
    :sswitch_91
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 94
    .restart local v2       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v13

    .line 95
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v13, :cond_b2

    const/4 v1, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 96
    :cond_b2
    const/4 v1, 0x0

    goto :goto_aa

    .line 101
    .end local v2           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v13           #_result:Z
    :sswitch_b4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 104
    .local v2, _arg0:Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplaySize(Landroid/graphics/Point;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v2, :cond_d7

    .line 107
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    :goto_d4
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 111
    :cond_d7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d4

    .line 117
    .end local v2           #_arg0:Landroid/graphics/Point;
    :sswitch_de
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 120
    .restart local v2       #_arg0:Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v2, :cond_101

    .line 123
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    :goto_fe
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 127
    :cond_101
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fe

    .line 133
    .end local v2           #_arg0:Landroid/graphics/Point;
    :sswitch_108
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getMaximumSizeDimension()I

    move-result v13

    .line 135
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 141
    .end local v13           #_result:I
    :sswitch_11e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(II)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 152
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_136
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize()V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 159
    :sswitch_146
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->canStatusBarHide()Z

    move-result v13

    .line 161
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v13, :cond_15f

    const/4 v1, 0x1

    :goto_157
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 162
    :cond_15f
    const/4 v1, 0x0

    goto :goto_157

    .line 167
    .end local v13           #_result:Z
    :sswitch_161
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_191

    .line 170
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 176
    .local v2, _arg0:Landroid/view/KeyEvent;
    :goto_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_193

    const/4 v3, 0x1

    .line 177
    .local v3, _arg1:Z
    :goto_17f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v13

    .line 178
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v13, :cond_195

    const/4 v1, 0x1

    :goto_189
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 173
    .end local v2           #_arg0:Landroid/view/KeyEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :cond_191
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/view/KeyEvent;
    goto :goto_178

    .line 176
    :cond_193
    const/4 v3, 0x0

    goto :goto_17f

    .line 179
    .restart local v3       #_arg1:Z
    .restart local v13       #_result:Z
    :cond_195
    const/4 v1, 0x0

    goto :goto_189

    .line 184
    .end local v2           #_arg0:Landroid/view/KeyEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :sswitch_197
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c7

    .line 187
    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 193
    .local v2, _arg0:Landroid/view/MotionEvent;
    :goto_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c9

    const/4 v3, 0x1

    .line 194
    .restart local v3       #_arg1:Z
    :goto_1b5
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v13

    .line 195
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v13, :cond_1cb

    const/4 v1, 0x1

    :goto_1bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 190
    .end local v2           #_arg0:Landroid/view/MotionEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :cond_1c7
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/view/MotionEvent;
    goto :goto_1ae

    .line 193
    :cond_1c9
    const/4 v3, 0x0

    goto :goto_1b5

    .line 196
    .restart local v3       #_arg1:Z
    .restart local v13       #_result:Z
    :cond_1cb
    const/4 v1, 0x0

    goto :goto_1bf

    .line 201
    .end local v2           #_arg0:Landroid/view/MotionEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :sswitch_1cd
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1fd

    .line 204
    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 210
    .restart local v2       #_arg0:Landroid/view/MotionEvent;
    :goto_1e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ff

    const/4 v3, 0x1

    .line 211
    .restart local v3       #_arg1:Z
    :goto_1eb
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v13

    .line 212
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v13, :cond_201

    const/4 v1, 0x1

    :goto_1f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 207
    .end local v2           #_arg0:Landroid/view/MotionEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :cond_1fd
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/view/MotionEvent;
    goto :goto_1e4

    .line 210
    :cond_1ff
    const/4 v3, 0x0

    goto :goto_1eb

    .line 213
    .restart local v3       #_arg1:Z
    .restart local v13       #_result:Z
    :cond_201
    const/4 v1, 0x0

    goto :goto_1f5

    .line 218
    .end local v2           #_arg0:Landroid/view/MotionEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :sswitch_203
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22c

    .line 221
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 226
    .local v2, _arg0:Landroid/view/InputEvent;
    :goto_21a
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->injectInputEventNoWait(Landroid/view/InputEvent;)Z

    move-result v13

    .line 227
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v13, :cond_22e

    const/4 v1, 0x1

    :goto_224
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 224
    .end local v2           #_arg0:Landroid/view/InputEvent;
    .end local v13           #_result:Z
    :cond_22c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/view/InputEvent;
    goto :goto_21a

    .line 228
    .restart local v13       #_result:Z
    :cond_22e
    const/4 v1, 0x0

    goto :goto_224

    .line 233
    .end local v2           #_arg0:Landroid/view/InputEvent;
    .end local v13           #_result:Z
    :sswitch_230
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 236
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 242
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_244
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 245
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 251
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_258
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26f

    const/4 v2, 0x1

    .line 254
    .local v2, _arg0:Z
    :goto_266
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 253
    .end local v2           #_arg0:Z
    :cond_26f
    const/4 v2, 0x0

    goto :goto_266

    .line 260
    :sswitch_271
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 264
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 271
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_289
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 274
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 280
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_29d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    .line 286
    .local v3, _arg1:Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 288
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 290
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c9

    const/4 v6, 0x1

    .local v6, _arg4:Z
    :goto_2bf
    move-object v1, p0

    .line 291
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 290
    .end local v6           #_arg4:Z
    :cond_2c9
    const/4 v6, 0x0

    goto :goto_2bf

    .line 297
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/view/IApplicationToken;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    :sswitch_2cb
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 301
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 308
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_2e3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 312
    .local v2, _arg0:Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 319
    .end local v2           #_arg0:Landroid/view/IApplicationToken;
    .end local v3           #_arg1:I
    :sswitch_2ff
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 322
    .restart local v2       #_arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v13

    .line 323
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 329
    .end local v2           #_arg0:Landroid/view/IApplicationToken;
    .end local v13           #_result:I
    :sswitch_31d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 333
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_338

    const/4 v3, 0x1

    .line 334
    .local v3, _arg1:Z
    :goto_32f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 333
    .end local v3           #_arg1:Z
    :cond_338
    const/4 v3, 0x0

    goto :goto_32f

    .line 340
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_33a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_355

    const/4 v3, 0x1

    .line 345
    .restart local v3       #_arg1:Z
    :goto_34c
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 344
    .end local v3           #_arg1:Z
    :cond_355
    const/4 v3, 0x0

    goto :goto_34c

    .line 351
    .end local v2           #_arg0:I
    :sswitch_357
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v13

    .line 353
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 359
    .end local v13           #_result:I
    :sswitch_36d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;II)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 372
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    :sswitch_389
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 379
    :sswitch_399
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 383
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 387
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ed

    .line 388
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/CompatibilityInfo;

    .line 394
    .local v5, _arg3:Landroid/content/res/CompatibilityInfo;
    :goto_3bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ef

    .line 395
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 401
    .local v6, _arg4:Ljava/lang/CharSequence;
    :goto_3cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 403
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 405
    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 407
    .local v9, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 409
    .local v10, _arg8:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f1

    const/4 v11, 0x1

    .local v11, _arg9:Z
    :goto_3e3
    move-object v1, p0

    .line 410
    invoke-virtual/range {v1 .. v11}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 391
    .end local v5           #_arg3:Landroid/content/res/CompatibilityInfo;
    .end local v6           #_arg4:Ljava/lang/CharSequence;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/IBinder;
    .end local v11           #_arg9:Z
    :cond_3ed
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/content/res/CompatibilityInfo;
    goto :goto_3bc

    .line 398
    :cond_3ef
    const/4 v6, 0x0

    .restart local v6       #_arg4:Ljava/lang/CharSequence;
    goto :goto_3cc

    .line 409
    .restart local v7       #_arg5:I
    .restart local v8       #_arg6:I
    .restart local v9       #_arg7:I
    .restart local v10       #_arg8:Landroid/os/IBinder;
    :cond_3f1
    const/4 v11, 0x0

    goto :goto_3e3

    .line 416
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/content/res/CompatibilityInfo;
    .end local v6           #_arg4:Ljava/lang/CharSequence;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/IBinder;
    :sswitch_3f3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 419
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 425
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_407
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 429
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_422

    const/4 v3, 0x1

    .line 430
    .local v3, _arg1:Z
    :goto_419
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 429
    .end local v3           #_arg1:Z
    :cond_422
    const/4 v3, 0x0

    goto :goto_419

    .line 436
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_424
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 440
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 447
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_43c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 451
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_457

    const/4 v3, 0x1

    .line 452
    .local v3, _arg1:Z
    :goto_44e
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 451
    .end local v3           #_arg1:Z
    :cond_457
    const/4 v3, 0x0

    goto :goto_44e

    .line 458
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_459
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 461
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 467
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_46d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 472
    .local v3, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 478
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    :sswitch_485
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 481
    .local v12, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v12}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 487
    .end local v12           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_499
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 490
    .restart local v12       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v12}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 496
    .end local v12           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_4ad
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e0

    .line 499
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 505
    .local v2, _arg0:Landroid/content/res/Configuration;
    :goto_4c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 506
    .restart local v3       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 507
    .local v13, _result:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    if-eqz v13, :cond_4e2

    .line 509
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 515
    :goto_4dd
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 502
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v13           #_result:Landroid/content/res/Configuration;
    :cond_4e0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/res/Configuration;
    goto :goto_4c4

    .line 513
    .restart local v3       #_arg1:Landroid/os/IBinder;
    .restart local v13       #_result:Landroid/content/res/Configuration;
    :cond_4e2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4dd

    .line 519
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v13           #_result:Landroid/content/res/Configuration;
    :sswitch_4e9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_509

    .line 522
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 527
    .restart local v2       #_arg0:Landroid/content/res/Configuration;
    :goto_500
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 525
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    :cond_509
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/res/Configuration;
    goto :goto_500

    .line 533
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    :sswitch_50b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 537
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 544
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_523
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 547
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 553
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_537
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 556
    .local v2, _arg0:Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 562
    .end local v2           #_arg0:Landroid/view/IOnKeyguardExitResult;
    :sswitch_54f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v13

    .line 564
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v13, :cond_568

    const/4 v1, 0x1

    :goto_560
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 565
    :cond_568
    const/4 v1, 0x0

    goto :goto_560

    .line 570
    .end local v13           #_result:Z
    :sswitch_56a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v13

    .line 572
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v13, :cond_583

    const/4 v1, 0x1

    :goto_57b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 573
    :cond_583
    const/4 v1, 0x0

    goto :goto_57b

    .line 578
    .end local v13           #_result:Z
    :sswitch_585
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v13

    .line 580
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v13, :cond_59e

    const/4 v1, 0x1

    :goto_596
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 581
    :cond_59e
    const/4 v1, 0x0

    goto :goto_596

    .line 586
    .end local v13           #_result:Z
    :sswitch_5a0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 593
    :sswitch_5b0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 602
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_5c4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 605
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v13

    .line 606
    .local v13, _result:F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 608
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 612
    .end local v2           #_arg0:I
    .end local v13           #_result:F
    :sswitch_5de
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v13

    .line 614
    .local v13, _result:[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 616
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 620
    .end local v13           #_result:[F
    :sswitch_5f4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 625
    .local v3, _arg1:F
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 631
    .end local v2           #_arg0:I
    .end local v3           #_arg1:F
    :sswitch_60c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 634
    .local v2, _arg0:[F
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 640
    .end local v2           #_arg0:[F
    :sswitch_620
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 643
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getSwitchState(I)I

    move-result v13

    .line 644
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 650
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_63a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 655
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getSwitchStateForDevice(II)I

    move-result v13

    .line 656
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 662
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:I
    :sswitch_658
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 665
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getScancodeState(I)I

    move-result v13

    .line 666
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 672
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_672
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 676
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 677
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getScancodeStateForDevice(II)I

    move-result v13

    .line 678
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 684
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:I
    :sswitch_690
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getTrackballScancodeState(I)I

    move-result v13

    .line 688
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 694
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_6aa
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 697
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDPadScancodeState(I)I

    move-result v13

    .line 698
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 704
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_6c4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 707
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getKeycodeState(I)I

    move-result v13

    .line 708
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 714
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_6de
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 718
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 719
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getKeycodeStateForDevice(II)I

    move-result v13

    .line 720
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 726
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:I
    :sswitch_6fc
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getTrackballKeycodeState(I)I

    move-result v13

    .line 730
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 736
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_716
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDPadKeycodeState(I)I

    move-result v13

    .line 740
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 746
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_730
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v13

    .line 750
    .local v13, _result:Landroid/view/InputChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    if-eqz v13, :cond_753

    .line 752
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 758
    :goto_750
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 756
    :cond_753
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_750

    .line 762
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:Landroid/view/InputChannel;
    :sswitch_75a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 766
    .local v2, _arg0:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3

    .line 767
    .local v3, _arg1:[Z
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->hasKeys([I[Z)Z

    move-result v13

    .line 768
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v13, :cond_780

    const/4 v1, 0x1

    :goto_773
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 771
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 769
    :cond_780
    const/4 v1, 0x0

    goto :goto_773

    .line 775
    .end local v2           #_arg0:[I
    .end local v3           #_arg1:[Z
    .end local v13           #_result:Z
    :sswitch_782
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 778
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    .line 779
    .local v13, _result:Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    if-eqz v13, :cond_7a5

    .line 781
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 787
    :goto_7a2
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 785
    :cond_7a5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a2

    .line 791
    .end local v2           #_arg0:I
    .end local v13           #_result:Landroid/view/InputDevice;
    :sswitch_7ac
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getInputDeviceIds()[I

    move-result-object v13

    .line 793
    .local v13, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 795
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 799
    .end local v13           #_result:[I
    :sswitch_7c2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7d9

    const/4 v2, 0x1

    .line 802
    .local v2, _arg0:Z
    :goto_7d0
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 801
    .end local v2           #_arg0:Z
    :cond_7d9
    const/4 v2, 0x0

    goto :goto_7d0

    .line 808
    :sswitch_7db
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7f2

    const/4 v2, 0x1

    .line 811
    .restart local v2       #_arg0:Z
    :goto_7e9
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 810
    .end local v2           #_arg0:Z
    :cond_7f2
    const/4 v2, 0x0

    goto :goto_7e9

    .line 817
    :sswitch_7f4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 826
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_808
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_81f

    const/4 v2, 0x1

    .line 829
    .local v2, _arg0:Z
    :goto_816
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(Z)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 828
    .end local v2           #_arg0:Z
    :cond_81f
    const/4 v2, 0x0

    goto :goto_816

    .line 835
    :sswitch_821
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v13

    .line 837
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 843
    .end local v13           #_result:I
    :sswitch_837
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 846
    .local v2, _arg0:Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v13

    .line 847
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 853
    .end local v2           #_arg0:Landroid/view/IRotationWatcher;
    .end local v13           #_result:I
    :sswitch_855
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v13

    .line 855
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 861
    .end local v13           #_result:I
    :sswitch_86b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 864
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 870
    .end local v2           #_arg0:I
    :sswitch_87f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 877
    :sswitch_88f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 881
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 883
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 884
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 885
    .local v13, _result:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v13, :cond_8ba

    .line 887
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 893
    :goto_8b7
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 891
    :cond_8ba
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b7

    .line 897
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v13           #_result:Landroid/graphics/Bitmap;
    :sswitch_8c1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 901
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 903
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 904
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->screenshotApplicationsRecent(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 905
    .restart local v13       #_result:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    if-eqz v13, :cond_8ec

    .line 907
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 913
    :goto_8e9
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 911
    :cond_8ec
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8e9

    .line 917
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v13           #_result:Landroid/graphics/Bitmap;
    :sswitch_8f3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 920
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 926
    .end local v2           #_arg0:I
    :sswitch_907
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 929
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setPointerSpeed(I)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 935
    .end local v2           #_arg0:I
    :sswitch_91b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 939
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 940
    .local v3, _arg1:Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 946
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Landroid/os/IRemoteCallback;
    :sswitch_937
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v13

    .line 948
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    if-eqz v13, :cond_950

    const/4 v1, 0x1

    :goto_948
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 949
    :cond_950
    const/4 v1, 0x0

    goto :goto_948

    .line 954
    .end local v13           #_result:Z
    :sswitch_952
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->keyguardIsShowing()Z

    move-result v13

    .line 956
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    if-eqz v13, :cond_96b

    const/4 v1, 0x1

    :goto_963
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 957
    :cond_96b
    const/4 v1, 0x0

    goto :goto_963

    .line 962
    .end local v13           #_result:Z
    :sswitch_96d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_984

    const/4 v2, 0x1

    .line 965
    .local v2, _arg0:Z
    :goto_97b
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->broadcastKeyinEvent(Z)V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 964
    .end local v2           #_arg0:Z
    :cond_984
    const/4 v2, 0x0

    goto :goto_97b

    .line 971
    :sswitch_986
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_99d

    const/4 v2, 0x1

    .line 974
    .restart local v2       #_arg0:Z
    :goto_994
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->broadcastMotionEvent(Z)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 973
    .end local v2           #_arg0:Z
    :cond_99d
    const/4 v2, 0x0

    goto :goto_994

    .line 980
    :sswitch_99f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9b6

    const/4 v2, 0x1

    .line 983
    .restart local v2       #_arg0:Z
    :goto_9ad
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->broadcastTrackballEvent(Z)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 982
    .end local v2           #_arg0:Z
    :cond_9b6
    const/4 v2, 0x0

    goto :goto_9ad

    .line 989
    :sswitch_9b8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9cf

    const/4 v2, 0x1

    .line 992
    .restart local v2       #_arg0:Z
    :goto_9c6
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->blockInputEvents(Z)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 991
    .end local v2           #_arg0:Z
    :cond_9cf
    const/4 v2, 0x0

    goto :goto_9c6

    .line 998
    :sswitch_9d1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9e8

    const/4 v2, 0x1

    .line 1001
    .restart local v2       #_arg0:Z
    :goto_9df
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLockScreenShowImmediately(Z)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1000
    .end local v2           #_arg0:Z
    :cond_9e8
    const/4 v2, 0x0

    goto :goto_9df

    .line 1007
    :sswitch_9ea
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a01

    const/4 v2, 0x1

    .line 1010
    .restart local v2       #_arg0:Z
    :goto_9f8
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setShowKeyguard(Z)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1009
    .end local v2           #_arg0:Z
    :cond_a01
    const/4 v2, 0x0

    goto :goto_9f8

    .line 1016
    :sswitch_a03
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a1a

    const/4 v2, 0x1

    .line 1019
    .restart local v2       #_arg0:Z
    :goto_a11
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showKeyguardWithAnimation(Z)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1018
    .end local v2           #_arg0:Z
    :cond_a1a
    const/4 v2, 0x0

    goto :goto_a11

    .line 1025
    :sswitch_a1c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a3c

    .line 1028
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1033
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_a33
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setIdleScreen(Landroid/content/ComponentName;)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1031
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :cond_a3c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_a33

    .line 1039
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_a3e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearIdleScreen()V

    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1046
    :sswitch_a4e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showIdleScreen()V

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1053
    :sswitch_a5e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hideIdleScreen()V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1060
    :sswitch_a6e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v13

    .line 1062
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1064
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1068
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_a84
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ab4

    .line 1071
    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 1077
    .local v2, _arg0:Landroid/view/MotionEvent;
    :goto_a9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ab6

    const/4 v3, 0x1

    .line 1078
    .local v3, _arg1:Z
    :goto_aa2
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectPenEvent(Landroid/view/MotionEvent;Z)Z

    move-result v13

    .line 1079
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    if-eqz v13, :cond_ab8

    const/4 v1, 0x1

    :goto_aac
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1074
    .end local v2           #_arg0:Landroid/view/MotionEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :cond_ab4
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/view/MotionEvent;
    goto :goto_a9b

    .line 1077
    :cond_ab6
    const/4 v3, 0x0

    goto :goto_aa2

    .line 1080
    .restart local v3       #_arg1:Z
    .restart local v13       #_result:Z
    :cond_ab8
    const/4 v1, 0x0

    goto :goto_aac

    .line 1085
    .end local v2           #_arg0:Landroid/view/MotionEvent;
    .end local v3           #_arg1:Z
    .end local v13           #_result:Z
    :sswitch_aba
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1090
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1096
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_ad2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1099
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPenSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1100
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1102
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1106
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_aec
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPenWorkingMode()I

    move-result v13

    .line 1108
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1114
    .end local v13           #_result:I
    :sswitch_b02
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b19

    const/4 v2, 0x1

    .line 1117
    .local v2, _arg0:Z
    :goto_b10
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStatusBarTouchMode(Z)V

    .line 1118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1116
    .end local v2           #_arg0:Z
    :cond_b19
    const/4 v2, 0x0

    goto :goto_b10

    .line 1123
    :sswitch_b1b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationDuration(I)V

    .line 1127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1132
    .end local v2           #_arg0:I
    :sswitch_b2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1135
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationRate(I)V

    .line 1136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1141
    .end local v2           #_arg0:I
    :sswitch_b43
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1146
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overrideHtcGlAppTransitionAnimation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1152
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_b5b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1156
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1157
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overrideZoomPointForHtcGlAppTransitionAnimation(II)V

    .line 1158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1163
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_b73
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ba3

    .line 1166
    sget-object v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 1172
    .local v2, _arg0:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :goto_b8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ba5

    .line 1173
    sget-object v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 1178
    .local v3, _arg1:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :goto_b9a
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overrideHtcGlAppTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1169
    .end local v2           #_arg0:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .end local v3           #_arg1:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :cond_ba3
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    goto :goto_b8a

    .line 1176
    :cond_ba5
    const/4 v3, 0x0

    .restart local v3       #_arg1:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    goto :goto_b9a

    .line 1184
    .end local v2           #_arg0:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .end local v3           #_arg1:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :sswitch_ba7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startHomeByHomeKey()V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1191
    :sswitch_bb7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->forcePasswordTimeout()V

    .line 1193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1198
    :sswitch_bc7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_bde

    const/4 v2, 0x1

    .line 1201
    .local v2, _arg0:Z
    :goto_bd5
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showMessageHandleViolation(Z)V

    .line 1202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1200
    .end local v2           #_arg0:Z
    :cond_bde
    const/4 v2, 0x0

    goto :goto_bd5

    .line 44
    :sswitch_data_be0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_49
        0x4 -> :sswitch_63
        0x5 -> :sswitch_91
        0x6 -> :sswitch_b4
        0x7 -> :sswitch_de
        0x8 -> :sswitch_108
        0x9 -> :sswitch_11e
        0xa -> :sswitch_136
        0xb -> :sswitch_146
        0xc -> :sswitch_161
        0xd -> :sswitch_197
        0xe -> :sswitch_1cd
        0xf -> :sswitch_203
        0x10 -> :sswitch_230
        0x11 -> :sswitch_244
        0x12 -> :sswitch_258
        0x13 -> :sswitch_271
        0x14 -> :sswitch_289
        0x15 -> :sswitch_29d
        0x16 -> :sswitch_2cb
        0x17 -> :sswitch_2e3
        0x18 -> :sswitch_2ff
        0x19 -> :sswitch_31d
        0x1a -> :sswitch_33a
        0x1b -> :sswitch_357
        0x1c -> :sswitch_36d
        0x1d -> :sswitch_389
        0x1e -> :sswitch_399
        0x1f -> :sswitch_3f3
        0x20 -> :sswitch_407
        0x21 -> :sswitch_424
        0x22 -> :sswitch_43c
        0x23 -> :sswitch_459
        0x24 -> :sswitch_46d
        0x25 -> :sswitch_485
        0x26 -> :sswitch_499
        0x27 -> :sswitch_4ad
        0x28 -> :sswitch_4e9
        0x29 -> :sswitch_50b
        0x2a -> :sswitch_523
        0x2b -> :sswitch_537
        0x2c -> :sswitch_54f
        0x2d -> :sswitch_56a
        0x2e -> :sswitch_585
        0x2f -> :sswitch_5a0
        0x30 -> :sswitch_5b0
        0x31 -> :sswitch_5c4
        0x32 -> :sswitch_5de
        0x33 -> :sswitch_5f4
        0x34 -> :sswitch_60c
        0x35 -> :sswitch_620
        0x36 -> :sswitch_63a
        0x37 -> :sswitch_658
        0x38 -> :sswitch_672
        0x39 -> :sswitch_690
        0x3a -> :sswitch_6aa
        0x3b -> :sswitch_6c4
        0x3c -> :sswitch_6de
        0x3d -> :sswitch_6fc
        0x3e -> :sswitch_716
        0x3f -> :sswitch_730
        0x40 -> :sswitch_75a
        0x41 -> :sswitch_782
        0x42 -> :sswitch_7ac
        0x43 -> :sswitch_7c2
        0x44 -> :sswitch_7db
        0x45 -> :sswitch_7f4
        0x46 -> :sswitch_808
        0x47 -> :sswitch_821
        0x48 -> :sswitch_837
        0x49 -> :sswitch_855
        0x4a -> :sswitch_86b
        0x4b -> :sswitch_87f
        0x4c -> :sswitch_88f
        0x4d -> :sswitch_8c1
        0x4e -> :sswitch_8f3
        0x4f -> :sswitch_907
        0x50 -> :sswitch_91b
        0x51 -> :sswitch_937
        0x52 -> :sswitch_952
        0x53 -> :sswitch_96d
        0x54 -> :sswitch_986
        0x55 -> :sswitch_99f
        0x56 -> :sswitch_9b8
        0x57 -> :sswitch_9d1
        0x58 -> :sswitch_9ea
        0x59 -> :sswitch_a03
        0x5a -> :sswitch_a1c
        0x5b -> :sswitch_a3e
        0x5c -> :sswitch_a4e
        0x5d -> :sswitch_a5e
        0x5e -> :sswitch_a6e
        0x5f -> :sswitch_a84
        0x60 -> :sswitch_aba
        0x61 -> :sswitch_ad2
        0x62 -> :sswitch_aec
        0x63 -> :sswitch_b02
        0x64 -> :sswitch_b1b
        0x65 -> :sswitch_b2f
        0x66 -> :sswitch_b43
        0x67 -> :sswitch_b5b
        0x68 -> :sswitch_b73
        0x69 -> :sswitch_ba7
        0x6a -> :sswitch_bb7
        0x6b -> :sswitch_bc7
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method