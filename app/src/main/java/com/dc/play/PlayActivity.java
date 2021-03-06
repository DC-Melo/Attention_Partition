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
import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.gridlayout.widget.GridLayout;
import com.dc.play.bean.Config;
import com.dc.play.bean.GameMsg;
import com.dc.play.bean.Result;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public class PlayActivity extends AppCompatActivity {
    private static final String TAG = PlayActivity.class.getSimpleName();
    private GridLayout gridLayout;
    private boolean isGameRuning;
    private boolean isGamePause;
    private Config config;
    private DisplayThread randomThread;
    Button btnPause;
    TextView tipText ;
    private ArrayList<Button> buttons = new ArrayList<>();
    private ArrayList<Result> results = new ArrayList<>();

    // 设置与子线程通信的handler
    private Handler mainHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int what = msg.what;
            switch (what) {
                case GameMsg.MSG_GAME_END:
                    isGameRuning = false;
                    isGamePause = false;
                    results = (ArrayList<Result>) msg.obj;
                    // bundle , 注意:使用putSerializable()方法时，需要把List<>强转成为Serializable,并且集合中的成员都需要实现Serializable接口
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("ARRAYLIST",(Serializable)results);
                    // intent
                    Intent intent = new Intent(PlayActivity.this,ResultActivity.class);
                    intent.putExtras(bundle);
                    // navigate
                    startActivity(intent);
                    break;
                case GameMsg.MSG_GAME_START:
                    isGameRuning = true;
                    isGamePause = false;
                    tipText.setVisibility(View.INVISIBLE);
                    btnPause.setVisibility(View.INVISIBLE);
                    for(int i=0;i<buttons.size();i++){
                        buttons.get(i).setVisibility(View.VISIBLE);
                    }
                    break;
                case GameMsg.MSG_GAME_START_RUNING:
                    isGamePause = false;
                    break;
                case GameMsg.MSG_GAME_START_PAUSE:
                    isGamePause = true;
                    break;
                case GameMsg.MSG_GAME_TIP:
                    tipText.setVisibility(View.VISIBLE);
                    btnPause.setVisibility(View.VISIBLE);
                    for(int i=0;i<buttons.size();i++){
                        buttons.get(i).setVisibility(View.INVISIBLE);
                    }
                    break;
                case GameMsg.MSG_GAME_TIP_BLANK:
                    tipText.setVisibility(View.INVISIBLE);
                    btnPause.setVisibility(View.INVISIBLE);
                    for(int i=0;i<buttons.size();i++){
                        buttons.get(i).setVisibility(View.INVISIBLE);
                    }
                    break;
                case GameMsg.MSG_GAME_ACTION:
                    int index = (int) msg.obj;
                    Log.d(TAG,String.format("显示%s个格子",index) );
                    buttons.get(index).setBackgroundColor(Color.BLUE);
                    buttons.get(index).setTextColor(Color.BLUE);
                    buttons.get(index).setVisibility(View.VISIBLE);
                    break;
                case GameMsg.MSG_GAME_ACTION_BLANK:
                    btnPause.setVisibility(View.INVISIBLE);
                    tipText.setVisibility(View.INVISIBLE);
                    for(int i=0;i<buttons.size();i++){
                        buttons.get(i).setVisibility(View.INVISIBLE);
                    }
                    break;
            }
        }
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle bundle = this.getIntent().getExtras();
        config = (Config) bundle.getSerializable("CONFIG");
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_play);
        initView();
        // 启动线程控制显示
        randomThread = new DisplayThread(this, mainHandler, config);
        randomThread.start();
    }

    /**
     * 初始化页面布局 
     */
    @SuppressLint("ResourceAsColor")
    public void initView(){
        // 初始化grid布局
        gridLayout = (GridLayout) findViewById(R.id.grid_layout);
        gridLayout.setColumnCount(config.getColumn());
        gridLayout.setRowCount(config.getRow());
        btnPause = (Button) findViewById(R.id.btn_pause);
        tipText = (TextView) findViewById(R.id.tip_text);

        // 初始化表格布局中的按钮
        for(int i=0;i<config.getRow();i++){
            for(int j=0;j<config.getColumn();j++){
                final int finalI = i;
                final int finalJ = j;
                Button btn = new Button(this);
                //btn.setText(String.format("(%d,%d)",i,j));
                btn.setMinWidth(1);
                btn.setMinHeight(1);
                btn.setMinimumWidth(1);
                btn.setMinimumHeight(1);
                btn.setWidth(1920/config.getColumn());
                btn.setHeight(720/config.getRow());

                btn.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        // Do something in response to button click
                        Toast toast = Toast.makeText(getApplicationContext(), String.format("点击(%s,%s)",finalI,finalJ), Toast.LENGTH_SHORT);
                        //toast.show();
                        randomThread.setActionTime();
                    }
                });
                buttons.add(btn);
                // 添加到grid中
                GridLayout.Spec rowSpec = GridLayout.spec(i,GridLayout.FILL,1f);
                GridLayout.Spec columnSpec = GridLayout.spec(j,GridLayout.FILL,1f);
                GridLayout.LayoutParams params = new GridLayout.LayoutParams(rowSpec,columnSpec);
                gridLayout.addView(btn,params);
            }
        }
        // 绑定暂停游戏，继续游戏
        btnPause.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if(btnPause.getText().toString().equals(getResources().getString(R.string.thread_pause))){
                    randomThread.setThreadPause();
                    Toast toast = Toast.makeText(getApplicationContext(), R.string.thread_pause, Toast.LENGTH_SHORT);
                    //toast.show();
                    btnPause.setText(R.string.thread_resume);
                }else{
                    randomThread.setThreadResume();
                    // Do something in response to button click
                    Toast toast = Toast.makeText(getApplicationContext(), R.string.thread_resume, Toast.LENGTH_SHORT);
                    //toast.show();
                    btnPause.setText(R.string.thread_pause);
                }

            }
        });

    }

}
