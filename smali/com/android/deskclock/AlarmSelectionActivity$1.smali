.class Lcom/android/deskclock/AlarmSelectionActivity$1;
.super Ljava/lang/Object;
.source "AlarmSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmSelectionActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/deskclock/AlarmSelectionActivity$1;->this$0:Lcom/android/deskclock/AlarmSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/deskclock/AlarmSelectionActivity$1;->this$0:Lcom/android/deskclock/AlarmSelectionActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method
