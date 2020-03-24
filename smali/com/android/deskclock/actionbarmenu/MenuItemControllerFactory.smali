.class public final Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;
.super Ljava/lang/Object;
.source "MenuItemControllerFactory.java"


# static fields
.field private static final INSTANCE:Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;


# instance fields
.field private final mMenuItemProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/actionbarmenu/MenuItemProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    invoke-direct {v0}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;-><init>()V

    sput-object v0, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->INSTANCE:Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->mMenuItemProviders:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->INSTANCE:Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    return-object v0
.end method


# virtual methods
.method public buildMenuItemControllers(Landroid/app/Activity;)[Lcom/android/deskclock/actionbarmenu/MenuItemController;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->mMenuItemProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 48
    new-array v1, v0, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->mMenuItemProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/actionbarmenu/MenuItemProvider;

    invoke-interface {v3, p1}, Lcom/android/deskclock/actionbarmenu/MenuItemProvider;->provide(Landroid/app/Activity;)Lcom/android/deskclock/actionbarmenu/MenuItemController;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
