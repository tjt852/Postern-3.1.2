package com.tunnelworkshop.postern;

import android.content.Context;
import android.util.Log;

public class PosternStart {


    public static void createProxy(Context context, String name, String pass, String server, int port) {
        ProxyEditFragment editFragment = new ProxyEditFragment();
        editFragment.delpc("proxy");
        ProxyChain var6 = new ProxyChain();
        Proxy var2 = new Proxy();
        var6.setName("brightdata");
        var2.setDomain(server);
        var2.setPort(port);
        var2.setType(3);
        var2.setUsername(name);
        var2.setPassword(pass);
        var2.setEncryption("rc4");
        var2.setOta(false);
        var6.addProxy(var2);
        PosternApp var11 = (PosternApp) context.getApplicationContext();

        editFragment.delpc("brightdata");

        if (editFragment.addpc(var6.toBytes()) == 0) {
            Log.d("Postern", "add succeed");
        } else {
            Log.d("Postern", "add failed");
        }
        ProxyChainManager.getProxyChainManager().refreshProxyChain();
        var11.saveConfiguration();
    }


    public static void createRule(Context context) {
        RuleEditFragment ruleEditFragment = new RuleEditFragment();

        ruleEditFragment.ruledel(1);
        ruleEditFragment.ruledel(2);
        RuleGroup var5 = new RuleGroup();
        var5.setType(5);
        var5.setAction(2);
        var5.setPcpgname("brightdata");
        Rule var11 = Rule.buildRuleFromString(5, "*");
        var5.addRule(var11);
        PosternApp var14 = (PosternApp) context.getApplicationContext();

//        var5.setId(var14.getRuleEditID());
        var5.setId(-1);
        ruleEditFragment.ruleinsert(-1, var5.serialize());
//        if (var14.getRuleEditState() == 1) {
//            ruleEditFragment.ruleinsert(-1, var5.serialize());
//
//        } else {
//            var5.setId(var14.getRuleEditID());
//            ruleEditFragment.ruleupdate(var5.serialize());
//        }
        var14.saveConfiguration();

    }
}
