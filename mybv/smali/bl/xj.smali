.class public Lbl/xj;
.super Lbl/xh;
.source "xj.java"


# instance fields
.field protected c:Landroid/widget/TextView;

.field private d:Lbl/zt;

.field private e:Lbl/zu;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/view/animation/Animation;

.field private l:Z

.field public skips:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lbl/xh;-><init>()V

    .line 34
    iput v1, p0, Lbl/xj;->g:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lbl/xj;->l:Z

    return-void
.end method

.method private P()V
    .locals 9

    .prologue
    .line 102
    iget v0, p0, Lbl/xj;->i:I

    int-to-long v0, v0

    .line 103
    invoke-virtual {p0}, Lbl/xj;->x()I

    move-result v2

    int-to-long v2, v2

    .line 104
    invoke-static {v2, v3, v0, v1}, Lbl/zt;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lbl/xj;->d:Lbl/zt;

    iget-wide v4, v4, Lbl/zt;->b:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3e

    .line 105
    const-string v4, "BreakPointPlayerAdapter"

    const-string v5, "bp: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ltv/danmaku/android/log/BLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v4, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v2, v4, Lbl/zt;->b:J

    .line 107
    iget-object v2, p0, Lbl/xj;->d:Lbl/zt;

    iput-wide v0, v2, Lbl/zt;->c:J

    .line 108
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-object v1, p0, Lbl/xj;->d:Lbl/zt;

    invoke-virtual {v0, v1}, Lbl/zu;->a(Lbl/zt;)V

    .line 110
    :cond_3e
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_4d

    .line 112
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lbl/xj;->a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 114
    :cond_4d
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lbl/xj;->o()Landroid/app/Activity;

    move-result-object v1

    .line 181
    if-nez v1, :cond_7

    .line 209
    :goto_6
    return-void

    .line 184
    :cond_7
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lbl/xj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0c00de

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl/xj;->h:Ljava/lang/String;

    .line 186
    new-instance v0, Lbl/xj$1;

    invoke-direct {v0, p0, v1}, Lbl/xj$1;-><init>(Lbl/xj;Landroid/app/Activity;)V

    iput-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    goto :goto_6
.end method

.method private a(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 17

    .prologue
    .line 118
    if-nez p1, :cond_3

    .line 138
    :cond_2
    :goto_2
    return-void

    .line 121
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 122
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    .line 123
    move-object/from16 v0, p0

    iget v2, v0, Lbl/xj;->i:I

    .line 124
    if-lez v2, :cond_2

    .line 127
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->x()I

    move-result v3

    .line 128
    sub-int/2addr v2, v3

    const/16 v8, 0x1388

    if-le v2, v8, :cond_20

    invoke-virtual/range {p0 .. p0}, Lbl/xj;->L()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_20
    const/4 v2, -0x1

    .line 129
    :goto_21
    invoke-direct/range {p0 .. p1}, Lbl/xj;->b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I

    move-result v12

    .line 130
    const-wide/16 v8, 0x0

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isBangumi()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 132
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 133
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    .line 137
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v3

    int-to-long v13, v2

    const-wide/16 v15, 0x1

    invoke-static/range {v3 .. v16}, Lbl/zq;->a(Landroid/content/Context;JJJJIJJ)V

    goto :goto_2

    .line 128
    :cond_44
    div-int/lit16 v2, v3, 0x3e8

    goto :goto_21

    .line 135
    :cond_47
    const-wide/16 v10, 0x0

    goto :goto_39
.end method

.method static synthetic access$000(Lbl/xj;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$002(Lbl/xj;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$102(Lbl/xj;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lbl/xj;->l:Z

    return p1
.end method

.method private b(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I
    .locals 2

    .prologue
    .line 141
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 142
    const-string v0, "movie"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 145
    :goto_13
    return v0

    .line 142
    :cond_14
    const/4 v0, 0x3

    goto :goto_13

    .line 144
    :cond_16
    const-string v0, "cheese"

    iget-object v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa

    goto :goto_13

    .line 145
    :cond_23
    const/4 v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 48
    invoke-super {p0, p1}, Lbl/xh;->a(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lbl/xj;->b()Lcom/bilibili/tv/player/basic/context/PlayerParams;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_47

    .line 51
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 52
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3b

    .line 53
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v2, v3}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 57
    :goto_2a
    iput-object v0, p0, Lbl/xj;->d:Lbl/zt;

    .line 58
    new-instance v0, Lbl/zu;

    invoke-virtual {p0}, Lbl/xj;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbl/xj;->e:Lbl/zu;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->f:Z

    .line 63
    :goto_3a
    return-void

    .line 55
    :cond_3b
    new-instance v0, Lbl/zt;

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    .line 62
    :cond_47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/xj;->f:Z

    goto :goto_3a
.end method

.method public varargs b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lbl/xh;->b(Lcom/bilibili/tv/player/interfaces/IEventCenter$EventType;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public checkSkip(J)V
    .locals 7

    .prologue
    .line 85
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 86
    iget-object v1, p0, Lbl/xj;->skips:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_87

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_87

    .line 88
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 89
    :cond_2d
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_32

    .line 99
    :cond_31
    :goto_31
    return-void

    .line 90
    :cond_32
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fa6\u6d4b\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u5df2\u7a7a\u964d\u81f3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lbl/xj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 92
    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lbl/xj;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 93
    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/xj;->l:Z

    .line 94
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 95
    const-string v0, "end"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    goto :goto_31

    .line 85
    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public e()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 225
    invoke-super {p0}, Lbl/xh;->e()V

    .line 226
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 213
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    iget-boolean v1, p0, Lbl/xj;->l:Z

    if-nez v1, :cond_9

    .line 219
    :cond_8
    :goto_8
    return v0

    .line 216
    :cond_9
    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 217
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/xj;->a(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 219
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x4eea

    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1b

    .line 73
    invoke-direct {p0}, Lbl/xj;->P()V

    .line 74
    invoke-virtual {p0, v4}, Lbl/xj;->b(I)V

    .line 75
    invoke-virtual {p0}, Lbl/xj;->K()Z

    move-result v1

    if-nez v1, :cond_14

    .line 81
    :goto_13
    return v0

    .line 78
    :cond_14
    const/4 v1, 0x0

    const-wide/16 v2, 0x7918

    invoke-virtual {p0, v4, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    goto :goto_13

    .line 81
    :cond_1b
    invoke-super {p0, p1}, Lbl/xh;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_13
.end method

.method public onInfo2(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIJ)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    invoke-super {p0, p1}, Lbl/xh;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 151
    invoke-virtual {p0}, Lbl/xj;->I()I

    move-result v0

    iput v0, p0, Lbl/xj;->i:I

    .line 152
    invoke-virtual {p0}, Lbl/xj;->c()Lbl/yh;

    move-result-object v4

    .line 153
    iget-boolean v0, p0, Lbl/xj;->f:Z

    if-eqz v0, :cond_8f

    iget v0, p0, Lbl/xj;->g:I

    if-nez v0, :cond_8f

    if-eqz v4, :cond_8f

    .line 154
    iget-wide v2, v4, Lbl/yh;->d:J

    .line 155
    iget-object v0, v4, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mDanmakuParams:Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuParams;->getDanmakuDocument()Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_9e

    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->hasPlayerSeekScript()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 157
    invoke-interface {v0}, Ltv/danmaku/videoplayer/core/danmaku/IDanmakuDocument;->getPlayerScriptItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/danmaku/comment/CommentItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbl/ym;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    cmp-long v5, v2, v0

    if-gez v5, :cond_9e

    .line 162
    :goto_41
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_7c

    .line 163
    iget v2, p0, Lbl/xj;->i:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lbl/zt;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 164
    invoke-static {v0, v1}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v3, :cond_5b

    invoke-direct {p0}, Lbl/xj;->Q()V

    .line 166
    :cond_5b
    iget-object v3, p0, Lbl/xj;->c:Landroid/widget/TextView;

    if-nez v3, :cond_60

    .line 177
    :goto_5f
    return-void

    .line 167
    :cond_60
    iget-object v3, p0, Lbl/xj;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lbl/xj;->h:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lbl/lp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iput-boolean v8, p0, Lbl/xj;->l:Z

    .line 169
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lbl/xj;->c(I)V

    .line 170
    iget-object v0, p0, Lbl/xj;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/xj;->a(Ljava/lang/Runnable;J)V

    .line 173
    :cond_7c
    iget-object v0, p0, Lbl/xj;->e:Lbl/zu;

    iget-object v1, v4, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v1, v1, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v1}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    iget-wide v2, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbl/zu;->b(Ljava/lang/String;)V

    .line 175
    :cond_8f
    const/16 v0, 0x4eea

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2, v3}, Lbl/xj;->a(ILjava/lang/Object;J)V

    .line 176
    iget v0, p0, Lbl/xj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/xj;->g:I

    goto :goto_5f

    :cond_9e
    move-wide v0, v2

    goto :goto_41
.end method
