.class final Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FormattedStringModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/uidata/FormattedStringModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/uidata/FormattedStringModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/uidata/FormattedStringModel;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/uidata/FormattedStringModel;Lcom/android/deskclock/uidata/FormattedStringModel$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/uidata/FormattedStringModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-static {p1}, Lcom/android/deskclock/uidata/FormattedStringModel;->access$100(Lcom/android/deskclock/uidata/FormattedStringModel;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 193
    iget-object p1, p0, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/uidata/FormattedStringModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/deskclock/uidata/FormattedStringModel;->access$202(Lcom/android/deskclock/uidata/FormattedStringModel;Ljava/util/Map;)Ljava/util/Map;

    .line 194
    iget-object p0, p0, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-static {p0, p2}, Lcom/android/deskclock/uidata/FormattedStringModel;->access$302(Lcom/android/deskclock/uidata/FormattedStringModel;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
