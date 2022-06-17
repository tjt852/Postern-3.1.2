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

public class ProxyEditFragment extends Fragment {
    private int encryptionSelected;
    private View fragmentRootView;
    private int proxyTypeSelected;

    public ProxyEditFragment() {
    }

    private int encryption2Index(String var1) {
        var1 = var1.toLowerCase();
        Log.d("Postern", var1);
        byte var2;
        if (var1.equals("rc4")) {
            var2 = 0;
        } else if (var1.equals("rc4-md5")) {
            var2 = 1;
        } else if (var1.equals("aes-128-cfb")) {
            var2 = 2;
        } else if (var1.equals("aes-192-cfb")) {
            var2 = 3;
        } else if (var1.equals("aes-256-cfb")) {
            var2 = 4;
        } else if (var1.equals("bf-cfb")) {
            var2 = 5;
        } else if (var1.equals("camellia-128-cfb")) {
            var2 = 6;
        } else if (var1.equals("camellia-192-cfb")) {
            var2 = 7;
        } else if (var1.equals("camellia-256-cfb")) {
            var2 = 8;
        } else if (var1.equals("cast5-cfb")) {
            var2 = 9;
        } else if (var1.equals("des-cfb")) {
            var2 = 10;
        } else if (var1.equals("idea-cfb")) {
            var2 = 11;
        } else if (var1.equals("rc2-cfb")) {
            var2 = 12;
        } else if (var1.equals("salsa20")) {
            var2 = 13;
        } else if (var1.equals("chacha20")) {
            var2 = 14;
        } else if (var1.equals("chacha20-ietf")) {
            var2 = 15;
        } else {
            Log.d("Postern", "no encryption match");
            var2 = -1;
        }

        return var2;
    }

    private String index2Encryption(int var1) {
        String var2;
        switch(var1) {
            case 0:
                var2 = new String("rc4");
                break;
            case 1:
                var2 = new String("rc4-md5");
                break;
            case 2:
                var2 = new String("aes-128-cfb");
                break;
            case 3:
                var2 = new String("aes-192-cfb");
                break;
            case 4:
                var2 = new String("aes-256-cfb");
                break;
            case 5:
                var2 = new String("bf-cfb");
                break;
            case 6:
                var2 = new String("camellia-128-cfb");
                break;
            case 7:
                var2 = new String("camellia-192-cfb");
                break;
            case 8:
                var2 = new String("camellia-256-cfb");
                break;
            case 9:
                var2 = new String("cast5-cfb");
                break;
            case 10:
                var2 = new String("des-cfb");
                break;
            case 11:
                var2 = new String("idea-cfb");
                break;
            case 12:
                var2 = new String("rc2-cfb");
                break;
            case 13:
                var2 = new String("salsa20");
                break;
            case 14:
                var2 = new String("chacha20");
                break;
            case 15:
                var2 = new String("chacha20-ietf");
                break;
            default:
                var2 = new String("");
        }

        return var2;
    }

    private int index2ProxyType(int var1) {
        byte var2;
        switch(var1) {
            case 0:
                var2 = 0;
                break;
            case 1:
                var2 = 1;
                break;
            case 2:
                var2 = 2;
                break;
            case 3:
                var2 = 3;
                break;
            case 4:
                var2 = 4;
                break;
            default:
                var2 = -1;
        }

        return var2;
    }

    private int proxyType2Index(int var1) {
        byte var2;
        switch(var1) {
            case 0:
                var2 = 0;
                break;
            case 1:
                var2 = 1;
                break;
            case 2:
                var2 = 2;
                break;
            case 3:
                var2 = 3;
                break;
            case 4:
                var2 = 4;
                break;
            default:
                var2 = -1;
        }

        return var2;
    }

    public native int addpc(byte[] var1);

    public native int delpc(String var1);

    public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3) {
        View var8 = var1.inflate(2130903048, var2, false);
        this.fragmentRootView = var8;
        Spinner var9 = (Spinner)var8.findViewById(2131165213);
        ArrayAdapter var12 = ArrayAdapter.createFromResource(this.getActivity(), 2131034115, 17367048);
        var12.setDropDownViewResource(17367049);
        var9.setAdapter(var12);
        var9.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> var1, View var2, int var3, long var4) {
                boolean var6 = true;
                ProxyEditFragment.this.proxyTypeSelected = var3;
                Log.d("Postern", String.format("proxy type %d", ProxyEditFragment.this.proxyTypeSelected));
                if (ProxyEditFragment.this.index2ProxyType(var3) != 1) {
                    var6 = false;
                }

                ((Spinner)ProxyEditFragment.this.fragmentRootView.findViewById(2131165216)).setEnabled(var6);
                ((CheckBox)ProxyEditFragment.this.fragmentRootView.findViewById(2131165217)).setEnabled(var6);
            }

            public void onNothingSelected(AdapterView<?> var1) {
            }
        });
        Spinner var13 = (Spinner)var8.findViewById(2131165216);
        ArrayAdapter var4 = ArrayAdapter.createFromResource(this.getActivity(), 2131034116, 17367048);
        var4.setDropDownViewResource(17367049);
        var13.setAdapter(var4);
        var13.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> var1, View var2, int var3, long var4) {
                ProxyEditFragment.this.encryptionSelected = var3;
                Log.d("Postern", String.format("encryption %d", ProxyEditFragment.this.encryptionSelected));
            }

            public void onNothingSelected(AdapterView<?> var1) {
            }
        });
        ProxyChain var14 = ((PosternApp)this.getActivity().getApplicationContext()).getCurrEditPC();
        if (var14 != null) {
            ((EditText)var8.findViewById(2131165210)).setText(var14.getName());
            Proxy var5 = var14.getProxy(0);
            EditText var6 = (EditText)var8.findViewById(2131165211);
            if (var5.getAddrType() == 1) {
                var6.setText(var5.getDomain());
            } else if (var5.getAddrType() == 2) {
                var6.setText(var5.getIp().getHostAddress());
            }

            var6 = (EditText)var8.findViewById(2131165212);
            var6.setText(String.format("%d", var5.getPort()));
            var6.setInputType(3);
            ((EditText)var8.findViewById(2131165214)).setText(var5.getUsername());
            ((EditText)var8.findViewById(2131165215)).setText(var5.getPassword());
            var9.setSelection(this.proxyType2Index(var5.getType()));
            CheckBox var10 = (CheckBox)var8.findViewById(2131165217);
            if (var5.getType() == 1) {
                var13.setSelection(this.encryption2Index(var5.getEncryption()));
                boolean var7;
                if (var5.getOta() != 0) {
                    var7 = true;
                } else {
                    var7 = false;
                }

                var10.setChecked(var7);
            } else {
                var13.setEnabled(false);
                var10.setEnabled(false);
            }
        } else {
            ((EditText)var8.findViewById(2131165212)).setInputType(3);
        }

        ((Button)var8.findViewById(2131165218)).setOnClickListener(new OnClickListener() {
            public void onClick(View var1) {
                ProxyChain var6 = new ProxyChain();
                Proxy var2 = new Proxy();
                String var3 = ((EditText)ProxyEditFragment.this.fragmentRootView.findViewById(2131165210)).getText().toString().trim();
                if (var3.length() == 0) {
                    Toast.makeText(ProxyEditFragment.this.getActivity(), ProxyEditFragment.this.getActivity().getResources().getString(2130968612), 1).show();
                } else if (var3.length() >= 32) {
                    Toast.makeText(ProxyEditFragment.this.getActivity(), ProxyEditFragment.this.getActivity().getResources().getString(2130968613), 1).show();
                } else if (!var3.matches("[0-9A-Za-z_]*")) {
                    Toast.makeText(ProxyEditFragment.this.getActivity(), ProxyEditFragment.this.getActivity().getResources().getString(2130968614), 1).show();
                } else {
                    var6.setName(var3);
                    var3 = ((EditText)ProxyEditFragment.this.fragmentRootView.findViewById(2131165211)).getText().toString().trim();
                    if (PosternUtils.validateIp(var3)) {
                        var2.setIp(var3);
                    } else {
                        var2.setDomain(var3);
                    }

                    EditText var8 = (EditText)ProxyEditFragment.this.fragmentRootView.findViewById(2131165212);

                    int var4;
                    try {
                        var4 = Integer.parseInt(var8.getText().toString().trim());
                    } catch (NumberFormatException var5) {
                        var4 = -1;
                    }

                    if (var4 >= 0 && var4 <= 65535) {
                        var2.setPort(var4);
                        Spinner var9 = (Spinner)ProxyEditFragment.this.fragmentRootView.findViewById(2131165213);
                        var2.setType(ProxyEditFragment.this.index2ProxyType(var9.getSelectedItemPosition()));
                        var2.setUsername(((EditText)ProxyEditFragment.this.fragmentRootView.findViewById(2131165214)).getText().toString().trim());
                        var2.setPassword(((EditText)ProxyEditFragment.this.fragmentRootView.findViewById(2131165215)).getText().toString().trim());
                        var9 = (Spinner)ProxyEditFragment.this.fragmentRootView.findViewById(2131165216);
                        var2.setEncryption(ProxyEditFragment.this.index2Encryption(var9.getSelectedItemPosition()));
                        CheckBox var10 = (CheckBox)ProxyEditFragment.this.fragmentRootView.findViewById(2131165217);
                        if (var2.getType() == 1) {
                            var2.setOta(var10.isChecked());
                        } else {
                            var2.setOta(false);
                        }

                        var6.addProxy(var2);
                        PosternApp var11 = (PosternApp)ProxyEditFragment.this.getActivity().getApplicationContext();
                        ProxyChain var7 = var11.getCurrEditPC();
                        if (var7 != null) {
                            ProxyEditFragment.this.delpc(var7.getName());
                        }

                        if (ProxyEditFragment.this.addpc(var6.toBytes()) == 0) {
                            Log.d("Postern", "add succeed");
                        } else {
                            Log.d("Postern", "add failed");
                        }

                        ProxyChainManager.getProxyChainManager().refreshProxyChain();
                        var11.saveConfiguration();
                        PageManager.getPageManager().setPage(ProxyEditFragment.this.getActivity(), 3);
                    } else {
                        Toast.makeText(ProxyEditFragment.this.getActivity(), ProxyEditFragment.this.getActivity().getResources().getString(2130968611), 1).show();
                    }
                }

            }
        });
        ((Button)var8.findViewById(2131165219)).setOnClickListener(new OnClickListener() {
            public void onClick(View var1) {
                PageManager.getPageManager().setPage(ProxyEditFragment.this.getActivity(), 3);
            }
        });
        Button var11 = (Button)var8.findViewById(2131165220);
        if (var14 == null) {
            var11.setEnabled(false);
        } else {
            var11.setTag(var14);
            var11.setOnClickListener(new OnClickListener() {
                public void onClick(View var1) {
                    Builder var2 = new Builder(ProxyEditFragment.this.getActivity());
                    var2.setTitle(2130968579);
                    var2.setMessage(2130968615);
                    var2.setPositiveButton(2130968580, new android.content.DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface var1, int var2) {
                            PosternApp var3 = (PosternApp)ProxyEditFragment.this.getActivity().getApplicationContext();
                            ProxyChain var4 = var3.getCurrEditPC();
                            var2 = ProxyEditFragment.this.delpc(var4.getName());
                            if (var2 == 0) {
                                ProxyChainManager.getProxyChainManager().refreshProxyChain();
                                var3.saveConfiguration();
                                PageManager.getPageManager().setPage(ProxyEditFragment.this.getActivity(), 3);
                            } else if (var2 > 0) {
                                Toast.makeText(ProxyEditFragment.this.getActivity(), ProxyEditFragment.this.getActivity().getResources().getString(2130968598), 1).show();
                            } else {
                                Toast.makeText(ProxyEditFragment.this.getActivity(), ProxyEditFragment.this.getActivity().getResources().getString(2130968599), 1).show();
                            }

                        }
                    });
                    var2.setNegativeButton(2130968581, new android.content.DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface var1, int var2) {
                        }
                    });
                    var2.show();
                }
            });
        }

        return var8;
    }
}