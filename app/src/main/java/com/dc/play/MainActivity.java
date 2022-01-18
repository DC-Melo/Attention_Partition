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
    public Config config = new Config();
    public EditText etTesterName            ;
    public EditText etRow            ;
    public EditText etColumn            ;
    public EditText etTipConst            ;
    public EditText etTipFloat            ;
    public EditText etTipBlankConst       ;
    public EditText etTipBlankFloat       ;
    public EditText etActionBlankConst ;
    public EditText etActionBlankFloat ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);
        Button startPlayButton = (Button) findViewById(R.id.btn_start);
        etTesterName             = (EditText) findViewById(R.id.et_tester_name);
        etRow                = (EditText) findViewById(R.id.et_row);
        etColumn             = (EditText) findViewById(R.id.et_column);
        etTipConst             = (EditText) findViewById(R.id.et_tip_const);
        etTipFloat             = (EditText) findViewById(R.id.et_tip_float);
        etTipBlankConst        = (EditText) findViewById(R.id.et_tip_blank_const);
        etTipBlankFloat        = (EditText) findViewById(R.id.et_tip_blank_float);
        etActionBlankConst  = (EditText) findViewById(R.id.et_action_blank_const);
        etActionBlankFloat  = (EditText) findViewById(R.id.et_action_blank_float);
        startPlayButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                将页面的配置文件保存到config，序列化后传到Playactivity
                config.setTester(etTesterName.getText().toString());
                config.setRow(Integer.parseInt(etRow.getText().toString()));
                config.setColumn(Integer.parseInt(etColumn.getText().toString()));
                config.setTipTimeConst(Integer.parseInt(etTipFloat.getText().toString()));
                config.setTipTimeFloat(Integer.parseInt(etTipConst.getText().toString()));
                config.setTipBlankTimeConst(Integer.parseInt(etTipBlankConst.getText().toString()));
                config.setTipBlankTimeFloat(Integer.parseInt(etTipBlankFloat.getText().toString()));
                config.setActionBlankTimeConst(Integer.parseInt(etActionBlankConst.getText().toString()));
                config.setActionBlankTimeFloat(Integer.parseInt(etActionBlankFloat.getText().toString()));
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
