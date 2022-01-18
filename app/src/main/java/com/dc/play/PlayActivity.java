package com.dc.play;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
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

//    设置与子线程通信的handler
    private Handler mainHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Log.d(TAG,"控制任务进程 " );
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
        randomThread = new DisplayThread(this, mainHandler, config);
        randomThread.start();
    }

    @SuppressLint("ResourceAsColor")
    public void initView(){
        gridLayout = (GridLayout) findViewById(R.id.grid_layout);
        gridLayout.setColumnCount(config.getColumn());
        gridLayout.setRowCount(config.getRow());
        System.out.println("列："+String.valueOf(config.getColumn()));
        System.out.println("行:"+String.valueOf(config.getRow()));

        btnPause = (Button) findViewById(R.id.btn_pause);
        tipText = (TextView) findViewById(R.id.tip_text);
//        初始化表格布局
        for(int i=0;i<config.getRow();i++){
            for(int j=0;j<config.getColumn();j++){
                System.out.println(String.valueOf(i));
                System.out.println(String.valueOf(j));
                Button btn = new Button(this);
                btn.setText(String.format("%d,%d",i,j));
                btn.setBackgroundColor(R.color.foreground);
                //btn.setText(String.format("row=%d cloumn=%d",i,j));
                buttons.add(btn);
                GridLayout.Spec rowSpec = GridLayout.spec(i,GridLayout.FILL,1f);
                GridLayout.Spec columnSpec = GridLayout.spec(j,GridLayout.FILL,1f);
                GridLayout.LayoutParams params = new GridLayout.LayoutParams(rowSpec,columnSpec);
                gridLayout.addView(btn,params);
            }
        }
//        绑定点击事件，点击后设置点击时间
        for(int i=0;i<buttons.size();i++){
            final int finalI = i;
            buttons.get(i).setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    // Do something in response to button click
                    Toast toast = Toast.makeText(getApplicationContext(), "点击位置"+String.valueOf(finalI), Toast.LENGTH_SHORT);
                    toast.show();
                    randomThread.setActionTime();
                }
            });
        }
//绑定暂停游戏，继续游戏
        btnPause.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if(btnPause.getText().toString().equals(getResources().getString(R.string.thread_pause))){
                    randomThread.setThreadPause();
                    Toast toast = Toast.makeText(getApplicationContext(), R.string.thread_pause, Toast.LENGTH_SHORT);
                    toast.show();
                    btnPause.setText(R.string.thread_resume);
                }else{
                    randomThread.setThreadResume();
                    // Do something in response to button click
                    Toast toast = Toast.makeText(getApplicationContext(), R.string.thread_resume, Toast.LENGTH_SHORT);
                    toast.show();
                    btnPause.setText(R.string.thread_pause);
                }

            }
        });

    }

}
