.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 50
    :try_start_7
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_a} :catch_e

    move-result-object v0

    .line 54
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    :goto_b
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 55
    return-void

    .line 51
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :catch_e
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    goto :goto_b
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
