.class Lbl/afm3$2;
.super Ljava/lang/Object;
.source "afm3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afm3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbl/afm3;

.field final synthetic val$show_splashs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lbl/afm3;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    iput-object p2, p0, Lbl/afm3$2;->val$show_splashs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    .line 184
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "/data/data/com.bilibili.tv/files/data/splash.png"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    if-nez p2, :cond_32

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 211
    :cond_12
    :goto_12
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    # getter for: Lbl/afm3;->splash_button:Lcom/bilibili/tv/widget/DrawFrameLayout;
    invoke-static {v0}, Lbl/afm3;->access$100(Lbl/afm3;)Lcom/bilibili/tv/widget/DrawFrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ShadowTextView;

    iget-object v1, p0, Lbl/afm3$2;->val$show_splashs:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5f00\u5c4f\u58c1\u7eb8\u5df2\u66f4\u65b0"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    :goto_31
    return-void

    .line 189
    :cond_32
    iget-object v0, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v0}, Lbl/afm3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070106

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 194
    new-instance v4, Lbl/afm3$2$1;

    invoke-direct {v4, p0, p2}, Lbl/afm3$2$1;-><init>(Lbl/afm3$2;I)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 202
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/RectF;

    const v6, 0x442c8000    # 690.0f

    const/4 v7, 0x0

    const v8, 0x4499c000    # 1230.0f

    const/high16 v9, 0x44700000    # 960.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 205
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_8a

    goto :goto_12

    .line 213
    :catch_8a
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    iget-object v1, p0, Lbl/afm3$2;->this$0:Lbl/afm3;

    invoke-virtual {v1}, Lbl/afm3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31
.end method
