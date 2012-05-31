.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;


# direct methods
.method constructor <init>(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 633
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    .line 634
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 635
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    .line 638
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v1, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 639
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "accelerometer_rotation_settle_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 642
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updateSettings()V

    .line 643
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 647
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updateSettings()V

    .line 648
    return-void
.end method
