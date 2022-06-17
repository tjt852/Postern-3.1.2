.class public Lcom/tunnelworkshop/postern/ProxyEditFragment;
.super Landroid/app/Fragment;
.source "ProxyEditFragment.java"


# instance fields
.field private encryptionSelected:I

.field private fragmentRootView:Landroid/view/View;

.field private proxyTypeSelected:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment;->proxyTypeSelected:I

    return-void
.end method

.method static synthetic access$1(Lcom/tunnelworkshop/postern/ProxyEditFragment;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment;->proxyTypeSelected:I

    return v0
.end method

.method static synthetic access$2(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->index2ProxyType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/tunnelworkshop/postern/ProxyEditFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment;->fragmentRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment;->encryptionSelected:I

    return-void
.end method

.method static synthetic access$5(Lcom/tunnelworkshop/postern/ProxyEditFragment;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tunnelworkshop/postern/ProxyEditFragment;->encryptionSelected:I

    return v0
.end method

.method static synthetic access$6(Lcom/tunnelworkshop/postern/ProxyEditFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->index2Encryption(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encryption2Index(Ljava/lang/String;)I
    .locals 3
    .param p1, "encryption"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "Postern"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "rc4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    .line 72
    :cond_0
    const-string v1, "rc4-md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "aes-128-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const/4 v1, 0x2

    goto :goto_0

    .line 76
    :cond_2
    const-string v1, "aes-192-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const/4 v1, 0x3

    goto :goto_0

    .line 78
    :cond_3
    const-string v1, "aes-256-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    const/4 v1, 0x4

    goto :goto_0

    .line 80
    :cond_4
    const-string v1, "bf-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    const/4 v1, 0x5

    goto :goto_0

    .line 82
    :cond_5
    const-string v1, "camellia-128-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    const/4 v1, 0x6

    goto :goto_0

    .line 84
    :cond_6
    const-string v1, "camellia-192-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 85
    const/4 v1, 0x7

    goto :goto_0

    .line 86
    :cond_7
    const-string v1, "camellia-256-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 87
    const/16 v1, 0x8

    goto :goto_0

    .line 88
    :cond_8
    const-string v1, "cast5-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 89
    const/16 v1, 0x9

    goto :goto_0

    .line 90
    :cond_9
    const-string v1, "des-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 91
    const/16 v1, 0xa

    goto :goto_0

    .line 92
    :cond_a
    const-string v1, "idea-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 93
    const/16 v1, 0xb

    goto :goto_0

    .line 94
    :cond_b
    const-string v1, "rc2-cfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 95
    const/16 v1, 0xc

    goto :goto_0

    .line 96
    :cond_c
    const-string v1, "salsa20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 97
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 98
    :cond_d
    const-string v1, "chacha20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 99
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 100
    :cond_e
    const-string v1, "chacha20-ietf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 101
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 104
    :cond_f
    const-string v1, "Postern"

    const-string v2, "no encryption match"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method private index2Encryption(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "rc4"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "rc4-md5"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "aes-128-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "aes-192-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "aes-256-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "bf-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "camellia-128-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_7
    new-instance v0, Ljava/lang/String;

    const-string v1, "camellia-192-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "camellia-256-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_9
    new-instance v0, Ljava/lang/String;

    const-string v1, "cast5-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_a
    new-instance v0, Ljava/lang/String;

    const-string v1, "des-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_b
    new-instance v0, Ljava/lang/String;

    const-string v1, "idea-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_c
    new-instance v0, Ljava/lang/String;

    const-string v1, "rc2-cfb"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_d
    new-instance v0, Ljava/lang/String;

    const-string v1, "salsa20"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_e
    new-instance v0, Ljava/lang/String;

    const-string v1, "chacha20"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_f
    new-instance v0, Ljava/lang/String;

    const-string v1, "chacha20-ietf"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private index2ProxyType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 62
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 51
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 57
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 59
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private proxyType2Index(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 45
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 34
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 40
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 42
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public native addpc([B)I
.end method

.method public native delpc(Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    const v14, 0x7f030008

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 154
    .local v11, "rootView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/tunnelworkshop/postern/ProxyEditFragment;->fragmentRootView:Landroid/view/View;

    .line 157
    const v14, 0x7f07001d

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 158
    .local v12, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f050003

    .line 159
    const v16, 0x1090008

    .line 158
    invoke-static/range {v14 .. v16}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 160
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v14, 0x1090009

    invoke-virtual {v2, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 161
    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 162
    new-instance v14, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$1;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V

    invoke-virtual {v12, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 184
    const v14, 0x7f070020

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 185
    .local v13, "spinner2":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f050004

    .line 186
    const v16, 0x1090008

    .line 185
    invoke-static/range {v14 .. v16}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 187
    .local v3, "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v14, 0x1090009

    invoke-virtual {v3, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 188
    invoke-virtual {v13, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    new-instance v14, Lcom/tunnelworkshop/postern/ProxyEditFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$2;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/tunnelworkshop/postern/PosternApp;

    .line 204
    .local v4, "appState":Lcom/tunnelworkshop/postern/PosternApp;
    invoke-virtual {v4}, Lcom/tunnelworkshop/postern/PosternApp;->getCurrEditPC()Lcom/tunnelworkshop/postern/ProxyChain;

    move-result-object v10

    .line 206
    .local v10, "pc":Lcom/tunnelworkshop/postern/ProxyChain;
    if-eqz v10, :cond_4

    .line 208
    const v14, 0x7f07001a

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 209
    .local v7, "ed":Landroid/widget/EditText;
    invoke-virtual {v10}, Lcom/tunnelworkshop/postern/ProxyChain;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/tunnelworkshop/postern/ProxyChain;->getProxy(I)Lcom/tunnelworkshop/postern/Proxy;

    move-result-object v9

    .line 213
    .local v9, "p":Lcom/tunnelworkshop/postern/Proxy;
    const v14, 0x7f07001b

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "ed":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 214
    .restart local v7    # "ed":Landroid/widget/EditText;
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 215
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getDomain()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    :goto_0
    const v14, 0x7f07001c

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "ed":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 222
    .restart local v7    # "ed":Landroid/widget/EditText;
    const-string v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getPort()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const/4 v14, 0x3

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 225
    const v14, 0x7f07001e

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "ed":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 226
    .restart local v7    # "ed":Landroid/widget/EditText;
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getUsername()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v14, 0x7f07001f

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "ed":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 229
    .restart local v7    # "ed":Landroid/widget/EditText;
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getPassword()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getType()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->proxyType2Index(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 233
    const v14, 0x7f070021

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 235
    .local v6, "chkboxOta":Landroid/widget/CheckBox;
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 236
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getEncryption()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tunnelworkshop/postern/ProxyEditFragment;->encryption2Index(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 237
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getOta()I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v6, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    .end local v6    # "chkboxOta":Landroid/widget/CheckBox;
    .end local v9    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :goto_2
    const v14, 0x7f070022

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 248
    .local v5, "btn":Landroid/widget/Button;
    new-instance v14, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$3;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v14, 0x7f070023

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "btn":Landroid/widget/Button;
    check-cast v5, Landroid/widget/Button;

    .line 350
    .restart local v5    # "btn":Landroid/widget/Button;
    new-instance v14, Lcom/tunnelworkshop/postern/ProxyEditFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$4;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v14, 0x7f070024

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "btn":Landroid/widget/Button;
    check-cast v5, Landroid/widget/Button;

    .line 358
    .restart local v5    # "btn":Landroid/widget/Button;
    if-nez v10, :cond_5

    .line 359
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    :goto_3
    return-object v11

    .line 216
    .end local v5    # "btn":Landroid/widget/Button;
    .restart local v9    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :cond_1
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getAddrType()B

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 217
    invoke-virtual {v9}, Lcom/tunnelworkshop/postern/Proxy;->getIp()Ljava/net/InetAddress;

    move-result-object v8

    .line 218
    .local v8, "ip":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 237
    .end local v8    # "ip":Ljava/net/InetAddress;
    .restart local v6    # "chkboxOta":Landroid/widget/CheckBox;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 239
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 240
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 243
    .end local v6    # "chkboxOta":Landroid/widget/CheckBox;
    .end local v7    # "ed":Landroid/widget/EditText;
    .end local v9    # "p":Lcom/tunnelworkshop/postern/Proxy;
    :cond_4
    const v14, 0x7f07001c

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 244
    .restart local v7    # "ed":Landroid/widget/EditText;
    const/4 v14, 0x3

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 362
    .restart local v5    # "btn":Landroid/widget/Button;
    :cond_5
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 363
    new-instance v14, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/tunnelworkshop/postern/ProxyEditFragment$5;-><init>(Lcom/tunnelworkshop/postern/ProxyEditFragment;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
