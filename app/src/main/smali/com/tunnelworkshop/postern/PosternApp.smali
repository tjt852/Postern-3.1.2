.class public Lcom/tunnelworkshop/postern/PosternApp;
.super Landroid/app/Application;
.source "PosternApp.java"


# static fields
.field public static final MSG_UPDATE_DRAWER:Ljava/lang/String; = "com.tunnelworkshop.postern.UPDATE_DRAWER"

.field public static final POSTERN_S_HAS_INIT:I = 0x1

.field public static final POSTERN_S_NONE:I = 0x0

.field public static final RULE_EDIT_S_EDIT:I = 0x2

.field public static final RULE_EDIT_S_NEW:I = 0x1

.field public static final RULE_EDIT_S_NONE:I = 0x0

.field public static final VPN_S_NONE:I = 0x0

.field public static final VPN_S_STARTED:I = 0x1

.field public static final VPN_S_STOPPED:I = 0x2


# instance fields
.field private conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

.field private currEditPC:Lcom/tunnelworkshop/postern/ProxyChain;

.field private currEditPG:Lcom/tunnelworkshop/postern/ProxyGroup;

.field private currRule:Lcom/tunnelworkshop/postern/RuleGroup;

.field private currUri:Landroid/net/Uri;

.field private h:Lcom/tunnelworkshop/postern/Hosts;

.field private record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

.field private ruleEditID:I

.field private ruleEditState:I

.field private snifferViewRecord:Z

.field private state:I

.field private trace:Lcom/tunnelworkshop/postern/SnifferTrace;

.field private vpnService:Lcom/tunnelworkshop/postern/PosternVpnService;

.field private vpnState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 12
    iput v1, p0, Lcom/tunnelworkshop/postern/PosternApp;->state:I

    .line 13
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currEditPC:Lcom/tunnelworkshop/postern/ProxyChain;

    .line 14
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currEditPG:Lcom/tunnelworkshop/postern/ProxyGroup;

    .line 15
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currRule:Lcom/tunnelworkshop/postern/RuleGroup;

    .line 17
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->trace:Lcom/tunnelworkshop/postern/SnifferTrace;

    .line 20
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->vpnService:Lcom/tunnelworkshop/postern/PosternVpnService;

    .line 21
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currUri:Landroid/net/Uri;

    .line 22
    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->h:Lcom/tunnelworkshop/postern/Hosts;

    .line 28
    iput v1, p0, Lcom/tunnelworkshop/postern/PosternApp;->ruleEditState:I

    .line 41
    iput v1, p0, Lcom/tunnelworkshop/postern/PosternApp;->vpnState:I

    .line 46
    return-void
.end method

.method private native savefile()I
.end method


# virtual methods
.method public getCurrEditPC()Lcom/tunnelworkshop/postern/ProxyChain;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currEditPC:Lcom/tunnelworkshop/postern/ProxyChain;

    return-object v0
.end method

.method public getCurrEditPG()Lcom/tunnelworkshop/postern/ProxyGroup;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currEditPG:Lcom/tunnelworkshop/postern/ProxyGroup;

    return-object v0
.end method

.method public getCurrEditRule()Lcom/tunnelworkshop/postern/RuleGroup;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currRule:Lcom/tunnelworkshop/postern/RuleGroup;

    return-object v0
.end method

.method public getCurrHosts()Lcom/tunnelworkshop/postern/Hosts;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->h:Lcom/tunnelworkshop/postern/Hosts;

    return-object v0
.end method

.method public getCurrSnifferConn()Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    return-object v0
.end method

.method public getCurrSnifferRecord()Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    return-object v0
.end method

.method public getCurrSnifferTrace()Lcom/tunnelworkshop/postern/SnifferTrace;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->trace:Lcom/tunnelworkshop/postern/SnifferTrace;

    return-object v0
.end method

.method public getCurrUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->currUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIsSnifferRecord()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->snifferViewRecord:Z

    return v0
.end method

.method public getRuleEditID()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->ruleEditID:I

    return v0
.end method

.method public getRuleEditState()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->ruleEditState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->state:I

    return v0
.end method

.method public getVpnService()Lcom/tunnelworkshop/postern/PosternVpnService;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->vpnService:Lcom/tunnelworkshop/postern/PosternVpnService;

    return-object v0
.end method

.method public getVpnState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->vpnState:I

    return v0
.end method

.method public saveConfiguration()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/tunnelworkshop/postern/PosternApp;->savefile()I

    .line 143
    return-void
.end method

.method public setCurrEditPC(Lcom/tunnelworkshop/postern/ProxyChain;)V
    .locals 0
    .param p1, "pc"    # Lcom/tunnelworkshop/postern/ProxyChain;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->currEditPC:Lcom/tunnelworkshop/postern/ProxyChain;

    .line 62
    return-void
.end method

.method public setCurrEditPG(Lcom/tunnelworkshop/postern/ProxyGroup;)V
    .locals 0
    .param p1, "pg"    # Lcom/tunnelworkshop/postern/ProxyGroup;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->currEditPG:Lcom/tunnelworkshop/postern/ProxyGroup;

    .line 70
    return-void
.end method

.method public setCurrEditRule(Lcom/tunnelworkshop/postern/RuleGroup;)V
    .locals 0
    .param p1, "rg"    # Lcom/tunnelworkshop/postern/RuleGroup;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->currRule:Lcom/tunnelworkshop/postern/RuleGroup;

    .line 78
    return-void
.end method

.method public setCurrHosts(Lcom/tunnelworkshop/postern/Hosts;)V
    .locals 0
    .param p1, "h"    # Lcom/tunnelworkshop/postern/Hosts;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->h:Lcom/tunnelworkshop/postern/Hosts;

    .line 155
    return-void
.end method

.method public setCurrSnifferConn(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;)V
    .locals 1
    .param p1, "conn"    # Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->snifferViewRecord:Z

    .line 90
    return-void
.end method

.method public setCurrSnifferRecord(Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->record:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferRecord;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->conn:Lcom/tunnelworkshop/postern/SnifferTrace$SnifferConn;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tunnelworkshop/postern/PosternApp;->snifferViewRecord:Z

    .line 84
    return-void
.end method

.method public setCurrSnifferTrace(Lcom/tunnelworkshop/postern/SnifferTrace;)V
    .locals 0
    .param p1, "trace"    # Lcom/tunnelworkshop/postern/SnifferTrace;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->trace:Lcom/tunnelworkshop/postern/SnifferTrace;

    .line 106
    return-void
.end method

.method public setCurrUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->currUri:Landroid/net/Uri;

    .line 147
    return-void
.end method

.method public setRuleEdit(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "ruleGroupID"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->ruleEditState:I

    .line 122
    iput p2, p0, Lcom/tunnelworkshop/postern/PosternApp;->ruleEditID:I

    .line 123
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->state:I

    .line 54
    return-void
.end method

.method public setVpnService(Lcom/tunnelworkshop/postern/PosternVpnService;)V
    .locals 0
    .param p1, "vpnService"    # Lcom/tunnelworkshop/postern/PosternVpnService;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->vpnService:Lcom/tunnelworkshop/postern/PosternVpnService;

    .line 114
    return-void
.end method

.method public setVpnState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/tunnelworkshop/postern/PosternApp;->vpnState:I

    .line 139
    return-void
.end method
