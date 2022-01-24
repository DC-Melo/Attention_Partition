/*******************************************************************************
* AUTHOR   : DC-Melo王江
* MAIL     : melo.da.chor@gmail.com
* GITHUB   : https://github.com/DC-Melo https://gitee.com/DC-Melo
* BLOG     : www.dc-melo.com
* FILE     : PlayActivity.java
* CREATED  : 2022-01-19 12:26
* MODIFIED : 2022-01-19 12:26
* VERSION  : V-0.0.1.220119_a;
* DESCRIB  : 
* NOTICES  : 
*  _____   _____      __  __      _       
* |  __ \ / ____|    |  \/  |    | |      
* | |  | | |   ______| \  / | ___| | ___  
* | |  | | |  |______| |\/| |/ _ \ |/ _ \ 
* | |__| | |____     | |  | |  __/ | (_) |
* |_____/ \_____|    |_|  |_|\___|_|\___/ 
*                                         
*                                         
* 
*  ___   ___ ___  ___      _____  __     ____  ___  
* |__ \ / _ \__ \|__ \    / / _ \/_ |   / /_ |/ _ \ 
*    ) | | | | ) |  ) |  / / | | || |  / / | | (_) |
*   / /| | | |/ /  / /  / /| | | || | / /  | |\__, |
*  / /_| |_| / /_ / /_ / / | |_| || |/ /   | |  / / 
* |____|\___/____|____/_/   \___/ |_/_/    |_| /_/  
*                                                   
*                                                   
* 
********************************************************************************/
package com.dc.play;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.dc.play.bean.Config;
import java.io.Serializable;

public class MainActivity extends AppCompatActivity {
    public Config   config             ;
    public EditText etTesterName       ;
    public EditText etRow              ;
    public EditText etColumn           ;
    public EditText etTipConst         ;
    public EditText etTipFloat         ;
    public EditText etTipBlankConst    ;
    public EditText etTipBlankFloat    ;
    public EditText etActionBlankConst ;
    public EditText etActionBlankFloat ;
    public Button   btStart            ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);
        // 页面元素初始化
        etTesterName       = (EditText) findViewById(R.id.et_tester_name)        ;
        etRow              = (EditText) findViewById(R.id.et_row)                ;
        etColumn           = (EditText) findViewById(R.id.et_column)             ;
        etTipConst         = (EditText) findViewById(R.id.et_tip_const)          ;
        etTipFloat         = (EditText) findViewById(R.id.et_tip_float)          ;
        etTipBlankConst    = (EditText) findViewById(R.id.et_tip_blank_const)    ;
        etTipBlankFloat    = (EditText) findViewById(R.id.et_tip_blank_float)    ;
        etActionBlankConst = (EditText) findViewById(R.id.et_action_blank_const) ;
        etActionBlankFloat = (EditText) findViewById(R.id.et_action_blank_float) ;
        btStart     = (Button) findViewById(R.id.btn_start)                      ;


        btStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // 将页面的配置文件保存到config，序列化后传到Playactivity
                config = new Config();
                config.setTester(etTesterName.getText().toString());
                config.setRow(Integer.parseInt(etRow.getText().toString()));
                config.setColumn(Integer.parseInt(etColumn.getText().toString()));
                config.setTipTimeConst(Integer.parseInt(etTipFloat.getText().toString()));
                config.setTipTimeFloat(Integer.parseInt(etTipConst.getText().toString()));
                config.setTipBlankTimeConst(Integer.parseInt(etTipBlankConst.getText().toString()));
                config.setTipBlankTimeFloat(Integer.parseInt(etTipBlankFloat.getText().toString()));
                config.setActionBlankTimeConst(Integer.parseInt(etActionBlankConst.getText().toString()));
                config.setActionBlankTimeFloat(Integer.parseInt(etActionBlankFloat.getText().toString()));
                // bundle
                Bundle bundle = new Bundle();
                bundle.putSerializable("CONFIG",(Serializable)config);
                // intent
                Intent intent = new Intent(MainActivity.this,PlayActivity.class);
                intent.putExtras(bundle);
                // navigate
                startActivity(intent);
            }
        });
    }
}
