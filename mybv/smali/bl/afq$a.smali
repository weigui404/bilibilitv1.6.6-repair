.class public final Lbl/afq$a;
.super Ljava/lang/Object;
.source "afq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public constructor <init>(Lbl/bbg;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lbl/afq$a;-><init>()V

    .line 139
    return-void
.end method


# virtual methods
.method public final a()Lbl/afq;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lbl/afq;

    invoke-direct {v0}, Lbl/afq;-><init>()V

    return-object v0
.end method
