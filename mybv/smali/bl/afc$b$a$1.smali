.class Lbl/afc$b$a$1;
.super Ljava/lang/Object;
.source "afc.java"

# interfaces
.implements Lbl/ja;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/afc$b$a;->a(Lbl/agb;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbl/ja",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lbl/afc$b$a;

.field final synthetic val$agbVar:Lbl/agb;


# direct methods
.method constructor <init>(Lbl/afc$b$a;Lbl/agb;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lbl/afc$b$a$1;->this$1:Lbl/afc$b$a;

    iput-object p2, p0, Lbl/afc$b$a$1;->val$agbVar:Lbl/agb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbl/jb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lbl/afc$b$a$1;->a(Lbl/jb;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbl/jb;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/jb",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lbl/afc$b$a$1;->this$1:Lbl/afc$b$a;

    iget-object v0, v0, Lbl/afc$b$a;->this$0:Lbl/afc$b;

    invoke-virtual {v0, v1}, Lbl/afc$b;->e(I)V

    .line 458
    iget-object v0, p0, Lbl/afc$b$a$1;->this$1:Lbl/afc$b$a;

    iget-object v0, v0, Lbl/afc$b$a;->b:Landroid/app/Activity;

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity;->l()V

    .line 459
    const-string v0, "tv_my_signout_click"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lbl/afc$b$a$1;->val$agbVar:Lbl/agb;

    invoke-virtual {v0}, Lbl/agb;->dismiss()V

    .line 461
    const/4 v0, 0x0

    return-object v0
.end method
