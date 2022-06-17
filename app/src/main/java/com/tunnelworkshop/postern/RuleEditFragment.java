//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.tunnelworkshop.postern;

import android.app.Fragment;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import android.widget.AdapterView.OnItemSelectedListener;
import java.net.InetAddress;

public class RuleEditFragment extends Fragment {
    private static final int RULE_POS_BLOCK = 2;
    private static final int RULE_POS_DIRECT = 0;
    private static final int RULE_POS_PROXY_GROUP = 4;
    private static final int RULE_POS_SMART = 3;
    private static final int RULE_POS_TUNNEL = 1;
    private static final int TYPE_POS_DEFAULT = 5;
    private static final int TYPE_POS_DOMAIN = 4;
    private static final int TYPE_POS_DOMAIN_KEYWORD = 2;
    private static final int TYPE_POS_DOMAIN_SUFFIX = 3;
    private static final int TYPE_POS_GEOIP = 0;
    private static final int TYPE_POS_IPCIDR = 1;
    private View fragmentRootView;
    private int proxySelected;
    private boolean recordSelected = false;
    private int ruleTypeSelected;

    public RuleEditFragment() {
    }

    private void installProxyGroupList() {
        Spinner var1 = (Spinner)this.fragmentRootView.findViewById(2131165227);
        ArrayAdapter var2 = new ArrayAdapter(this.getActivity(), 17367048);
        var2.setDropDownViewResource(17367049);
        ProxyGroupManager var3 = ProxyGroupManager.getProxyGroupManager();

        for(int var4 = 0; var4 < var3.getProxyGroupCount(); ++var4) {
            var2.add(var3.getProxyGroup(var4).getPgname());
        }

        var2.add(this.getActivity().getResources().getString(2130968638));
        var1.setAdapter(var2);
    }

    private void installProxyList() {
        Spinner var1 = (Spinner)this.fragmentRootView.findViewById(2131165227);
        ArrayAdapter var2 = new ArrayAdapter(this.getActivity(), 17367048);
        var2.setDropDownViewResource(17367049);
        ProxyChainManager var3 = ProxyChainManager.getProxyChainManager();

        for(int var4 = 0; var4 < var3.getProxyChainCount(); ++var4) {
            ProxyChain var5 = var3.getProxyChain(var4);
            Proxy var6 = var5.getProxy(0);
            String var8;
            if (var6.getAddrType() == 1) {
                var8 = String.format("%s - %s:%d", var5.getName(), var6.getDomain(), var6.getPort());
            } else if (var6.getAddrType() == 2) {
                InetAddress var7 = var6.getIp();
                var8 = String.format("%s - %s:%d", var5.getName(), var7.getHostAddress(), var6.getPort());
            } else {
                var8 = this.getActivity().getResources().getString(2130968637);
            }

            var2.add(var8);
        }

        var2.add(this.getActivity().getResources().getString(2130968637));
        var1.setAdapter(var2);
    }

    private void prevPage() {
        PageManager.getPageManager().setPage(this.getActivity(), 5);
    }

    public native int ruledel(int var1);

    public native int ruleinsert(int var1, byte[] var2);

    public native int ruleupdate(byte[] var1);

    private void selectProxyGroupSpinner(RuleGroup var1) {
        Spinner var2 = (Spinner)this.fragmentRootView.findViewById(2131165227);
        ProxyGroupManager var3 = ProxyGroupManager.getProxyGroupManager();
        int var4 = var3.getProxyGroupCount();
        if (var1.getPcpgname() == null) {
            var2.setSelection(var4);
        } else {
            for(int var5 = 0; var5 < var4; ++var5) {
                ProxyGroup var6 = var3.getProxyGroup(var5);
                if (var1.getPcpgname().equals(var6.getPgname())) {
                    var2.setSelection(var5);
                    return;
                }
            }

            var2.setSelection(var4);
        }

    }

    private void selectProxyListSpinner(RuleGroup var1) {
        Spinner var2 = (Spinner)this.fragmentRootView.findViewById(2131165227);
        ProxyChainManager var3 = ProxyChainManager.getProxyChainManager();
        int var4 = var3.getProxyChainCount();
        if (var1.getPcpgname() == null) {
            var2.setSelection(var4);
        } else {
            for(int var5 = 0; var5 < var4; ++var5) {
                ProxyChain var6 = var3.getProxyChain(var5);
                if (var1.getPcpgname().equals(var6.getName())) {
                    var2.setSelection(var5);
                    return;
                }
            }

            var2.setSelection(var4);
        }

    }

    private void updateProxyListSpinner(boolean var1) {
        if (var1) {
            this.installProxyList();
        } else {
            this.installProxyGroupList();
        }

    }

    public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3) {
        View var4 = var1.inflate(2130903052, var2, false);
        this.fragmentRootView = var4;
        PosternApp var11 = (PosternApp)this.getActivity().getApplicationContext();
        Spinner var15 = (Spinner)var4.findViewById(2131165224);
        Spinner var5 = (Spinner)var4.findViewById(2131165225);
        Spinner var6 = (Spinner)var4.findViewById(2131165227);
        CheckBox var7 = (CheckBox)var4.findViewById(2131165228);
        ArrayAdapter var13 = ArrayAdapter.createFromResource(this.getActivity(), 2131034117, 17367048);
        var13.setDropDownViewResource(17367049);
        var15.setAdapter(var13);
        var13 = ArrayAdapter.createFromResource(this.getActivity(), 2131034118, 17367048);
        var13.setDropDownViewResource(17367049);
        var5.setAdapter(var13);
        var5.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> var1, View var2, int var3, long var4) {
                RuleEditFragment.this.ruleTypeSelected = var3;
                CheckBox var8 = (CheckBox)RuleEditFragment.this.fragmentRootView.findViewById(2131165228);
                Spinner var6 = (Spinner)RuleEditFragment.this.fragmentRootView.findViewById(2131165227);
                RuleGroup var7 = ((PosternApp)RuleEditFragment.this.getActivity().getApplicationContext()).getCurrEditRule();
                if (RuleEditFragment.this.ruleTypeSelected == 0) {
                    var8.setEnabled(true);
                    var8.setChecked(RuleEditFragment.this.recordSelected);
                    var6.setEnabled(false);
                } else if (RuleEditFragment.this.ruleTypeSelected == 1) {
                    var8.setEnabled(true);
                    var8.setChecked(RuleEditFragment.this.recordSelected);
                    var6.setEnabled(true);
                    RuleEditFragment.this.updateProxyListSpinner(true);
                    if (var7 != null && (var7.getAction() == 2 || var7.getAction() == 3)) {
                        RuleEditFragment.this.selectProxyListSpinner(var7);
                    }
                } else if (RuleEditFragment.this.ruleTypeSelected == 2) {
                    var8.setEnabled(false);
                    var8.setChecked(false);
                    var6.setEnabled(false);
                } else if (RuleEditFragment.this.ruleTypeSelected == 3) {
                    var8.setEnabled(false);
                    var8.setChecked(false);
                    var6.setEnabled(true);
                    RuleEditFragment.this.updateProxyListSpinner(true);
                    if (var7 != null && var7.getAction() == 5) {
                        RuleEditFragment.this.selectProxyListSpinner(var7);
                    }
                } else if (RuleEditFragment.this.ruleTypeSelected == 4) {
                    var8.setEnabled(false);
                    var8.setChecked(false);
                    var6.setEnabled(true);
                    RuleEditFragment.this.updateProxyListSpinner(false);
                    if (var7 != null && var7.getAction() == 6) {
                        RuleEditFragment.this.selectProxyGroupSpinner(var7);
                    }
                }

            }

            public void onNothingSelected(AdapterView<?> var1) {
            }
        });
        var7.setOnClickListener(new OnClickListener() {
            public void onClick(View var1) {
                if (((CheckBox)var1).isChecked()) {
                    RuleEditFragment.this.recordSelected = true;
                } else {
                    RuleEditFragment.this.recordSelected = false;
                }

            }
        });
        ((Button)var4.findViewById(2131165230)).setOnClickListener(new OnClickListener() {
            public void onClick(View var1) {
                String var6 = null;
                CheckBox var2 = (CheckBox)RuleEditFragment.this.fragmentRootView.findViewById(2131165228);
                int var3 = ((Spinner)RuleEditFragment.this.fragmentRootView.findViewById(2131165225)).getSelectedItemPosition();
                byte var4;
                if (var3 == 0) {
                    if (!var2.isChecked()) {
                        var4 = 0;
                    } else {
                        var4 = 1;
                    }
                } else if (var3 == 1) {
                    if (!var2.isChecked()) {
                        var4 = 2;
                    } else {
                        var4 = 3;
                    }
                } else if (var3 == 2) {
                    var4 = 4;
                } else if (var3 == 3) {
                    var4 = 5;
                } else if (var3 == 4) {
                    var4 = 6;
                } else {
                    var4 = 4;
                }

                Spinner var8;
                if (var3 != 1 && var3 != 3) {
                    if (var3 == 4) {
                        var8 = (Spinner)RuleEditFragment.this.fragmentRootView.findViewById(2131165227);
                        ProxyGroupManager var9 = ProxyGroupManager.getProxyGroupManager();
                        var3 = var8.getSelectedItemPosition();
                        if (var3 >= var9.getProxyGroupCount()) {
                            Toast.makeText(RuleEditFragment.this.getActivity(), RuleEditFragment.this.getActivity().getResources().getString(2130968647), 1).show();
                            return;
                        }

                        var6 = var9.getProxyGroup(var3).getPgname();
                    }
                } else {
                    var8 = (Spinner)RuleEditFragment.this.fragmentRootView.findViewById(2131165227);
                    ProxyChainManager var7 = ProxyChainManager.getProxyChainManager();
                    var3 = var8.getSelectedItemPosition();
                    if (var3 >= var7.getProxyChainCount()) {
                        Toast.makeText(RuleEditFragment.this.getActivity(), RuleEditFragment.this.getActivity().getResources().getString(2130968645), 1).show();
                        return;
                    }

                    var6 = var7.getProxyChain(var3).getName();
                }

                byte var12;
                switch(((Spinner)RuleEditFragment.this.fragmentRootView.findViewById(2131165224)).getSelectedItemPosition()) {
                    case 0:
                        var12 = 0;
                        break;
                    case 1:
                        var12 = 1;
                        break;
                    case 2:
                        var12 = 2;
                        break;
                    case 3:
                        var12 = 3;
                        break;
                    case 4:
                        var12 = 4;
                        break;
                    default:
                        var12 = 5;
                }

                RuleGroup var5 = new RuleGroup();
                var5.setType(var12);
                var5.setAction(var4);
                var5.setPcpgname(var6);
                String var10 = ((EditText)RuleEditFragment.this.fragmentRootView.findViewById(2131165229)).getText().toString().trim();
                var6 = var10;
                if (var10.isEmpty()) {
                    if (var5.getType() != 5) {
                        Toast.makeText(RuleEditFragment.this.getActivity(), RuleEditFragment.this.getActivity().getResources().getString(2130968646), 1).show();
                        return;
                    }

                    var6 = "*";
                }

                String[] var13 = var6.split(";");
                int var15 = 0;

                while(true) {
                    if (var15 >= var13.length) {
                        PosternApp var14 = (PosternApp)RuleEditFragment.this.getActivity().getApplicationContext();
                        if (var14.getRuleEditState() == 1) {
                            RuleEditFragment.this.ruleinsert(var14.getRuleEditID(), var5.serialize());
                        } else {
                            var5.setId(var14.getRuleEditID());
                            RuleEditFragment.this.ruleupdate(var5.serialize());
                        }

                        var14.saveConfiguration();
                        RuleEditFragment.this.prevPage();
                        break;
                    }

                    var10 = var13[var15].trim();
                    if (var10.length() != 0) {
                        Rule var11 = Rule.buildRuleFromString(var12, var10);
                        if (var11 == null) {
                            Toast.makeText(RuleEditFragment.this.getActivity(), RuleEditFragment.this.getActivity().getResources().getString(2130968644), 1).show();
                            break;
                        }

                        var5.addRule(var11);
                    }

                    ++var15;
                }

            }
        });
        ((Button)var4.findViewById(2131165231)).setOnClickListener(new OnClickListener() {
            public void onClick(View var1) {
                Log.d("Postern", "calling rulefree");
                RuleEditFragment.this.prevPage();
            }
        });
        Button var14 = (Button)var4.findViewById(2131165232);
        var14.setTag(var11.getCurrEditRule());
        var14.setOnClickListener(new OnClickListener() {
            public void onClick(View var1) {
                Builder var2 = new Builder(RuleEditFragment.this.getActivity());
                var2.setTitle(2130968579);
                var2.setMessage(2130968648);
                var2.setPositiveButton(2130968580, new android.content.DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface var1, int var2) {
                        PosternApp var4 = (PosternApp)RuleEditFragment.this.getActivity().getApplicationContext();
                        RuleGroup var3 = var4.getCurrEditRule();
                        RuleEditFragment.this.ruledel(var3.getId());
                        var4.saveConfiguration();
                        RuleEditFragment.this.prevPage();
                    }
                });
                var2.setNegativeButton(2130968581, new android.content.DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface var1, int var2) {
                    }
                });
                var2.show();
            }
        });
        var14.setEnabled(false);
        RuleGroup var8 = var11.getCurrEditRule();
        if (var8 != null) {
            var14.setEnabled(true);
            String var12 = "";
            EditText var9 = (EditText)var4.findViewById(2131165229);

            for(int var10 = 0; var10 < var8.getRuleCount(); ++var10) {
                Rule var16 = var8.getRule(var10);
                String var17 = var12 + var16.toString();
                var12 = var17;
                if (var10 != var8.getRuleCount() - 1) {
                    var12 = var17 + "; ";
                }
            }

            var9.setText(var12);
            switch(var8.getType()) {
                case 0:
                    var15.setSelection(0);
                    break;
                case 1:
                    var15.setSelection(1);
                    break;
                case 2:
                    var15.setSelection(2);
                    break;
                case 3:
                    var15.setSelection(3);
                    break;
                case 4:
                    var15.setSelection(4);
                    break;
                case 5:
                    var15.setSelection(5);
            }

            switch(var8.getAction()) {
                case 0:
                    var7.setEnabled(true);
                    var7.setChecked(false);
                    this.recordSelected = false;
                    var5.setSelection(0);
                    var6.setEnabled(false);
                    break;
                case 1:
                    var7.setEnabled(true);
                    var7.setChecked(true);
                    this.recordSelected = true;
                    var5.setSelection(0);
                    var6.setEnabled(false);
                    break;
                case 2:
                    var7.setEnabled(true);
                    var7.setChecked(false);
                    this.recordSelected = false;
                    var5.setSelection(1);
                    var6.setEnabled(true);
                    this.updateProxyListSpinner(true);
                    this.selectProxyListSpinner(var8);
                    break;
                case 3:
                    var7.setEnabled(true);
                    var7.setChecked(true);
                    this.recordSelected = true;
                    var5.setSelection(1);
                    var6.setEnabled(true);
                    this.updateProxyListSpinner(true);
                    this.selectProxyListSpinner(var8);
                    break;
                case 4:
                    var7.setEnabled(false);
                    var6.setEnabled(false);
                    this.recordSelected = true;
                    var5.setSelection(2);
                    break;
                case 5:
                    var7.setEnabled(false);
                    var6.setEnabled(true);
                    this.recordSelected = false;
                    var5.setSelection(3);
                    this.updateProxyListSpinner(true);
                    this.selectProxyListSpinner(var8);
                    break;
                case 6:
                    var7.setEnabled(false);
                    var6.setEnabled(false);
                    this.recordSelected = false;
                    var5.setSelection(4);
                    this.updateProxyListSpinner(false);
                    this.selectProxyGroupSpinner(var8);
            }
        }

        return var4;
    }
}
