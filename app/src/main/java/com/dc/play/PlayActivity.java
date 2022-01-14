package com.dc.play;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.gridlayout.widget.GridLayout;

import com.dc.play.bean.Config;
import com.dc.play.bean.GameMsg;
import com.dc.play.bean.Result;

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
    private Config config;
    Button btnPause;
    TextView tipText ;
    private ArrayList<Button> buttons = new ArrayList<>();
    private ArrayList<Result> results = new ArrayList<>();


    @SuppressLint("HandlerLeak") private Handler mainHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Log.d(TAG,"控制任务进程 " );
            int what = msg.what;
            switch (what) {
                case GameMsg.MSG_GAME_END:
                    break;
                case GameMsg.MSG_GAME_START:
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
                    buttons.get(2).setVisibility(View.VISIBLE);
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
        setContentView(R.layout.activity_play);
        config = new Config();
        config.setColumn(16);
        config.setRow(6);
        initView();

        ExecutorService executorService = Executors.newFixedThreadPool(1);
        Future<ArrayList<Result>> resultsFuture = executorService.submit(new CalculationJob(config));
/*        try {
            results = resultsFuture.get(100000, TimeUnit.SECONDS);
            System.out.println("result: " + results.size());
        } catch (Exception e) {
            // interrupts if there is any possible error
            Log.d(TAG, "异常" );
            resultsFuture.cancel(true);
        }
        executorService.shutdown();
        try {
            executorService.awaitTermination(10000, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Log.d(TAG, "异常" );
            e.printStackTrace();
        }
        Log.d(TAG, "结果：" + results.get(0).getBeginTime());*/
    }

    public void initView(){
        gridLayout = (GridLayout) findViewById(R.id.grid_layout);
        gridLayout.setColumnCount(config.getColumn());
        gridLayout.setRowCount(config.getRow());
        System.out.println("列："+String.valueOf(config.getColumn()));
        System.out.println("行:"+String.valueOf(config.getRow()));

        btnPause = (Button) findViewById(R.id.btn_pause);
        tipText = (TextView) findViewById(R.id.tip_text);

        for(int i=0;i<config.getRow();i++){
            for(int j=0;j<config.getColumn();j++){
                System.out.println(String.valueOf(i));
                System.out.println(String.valueOf(j));
                Button btn = new Button(this);
                btn.setText(String.format("%d%d",i,j));
                //btn.setText(String.format("row=%d cloumn=%d",i,j));
                buttons.add(btn);
                GridLayout.Spec rowSpec = GridLayout.spec(i,GridLayout.FILL,1f);
                GridLayout.Spec columnSpec = GridLayout.spec(j,GridLayout.FILL,1f);
                GridLayout.LayoutParams params = new GridLayout.LayoutParams(rowSpec,columnSpec);
                gridLayout.addView(btn,params);
            }
        }
        for(int i=0;i<buttons.size();i++){
            final int finalI = i;
/*            results.add(new Result());
            results.get(i).setPlace(i);*/
            //buttons.get(i).setVisibility(View.INVISIBLE);
            buttons.get(i).setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    // Do something in response to button click
                    Toast toast = Toast.makeText(getApplicationContext(), "提示"+String.valueOf(finalI), Toast.LENGTH_SHORT);
                    toast.show();
                }
            });
        }

/*        Collections.shuffle(results);
        for(int i = 0; i< results.size(); i++){
            int place = results.get(i).getPlace();
            //buttons.get(place).setVisibility(View.VISIBLE);
            System.out.println("位置："+String.valueOf(place));
        }*/
    }


    public static class CalculationJob implements Callable<ArrayList<Result>> {
        private Handler mainHandler;
        Config config;
        ArrayList<Result> results = new ArrayList<>();

        public CalculationJob(Config config) {
            this.config =config;
        }
        @Override
        public ArrayList<Result> call() throws Exception {
            //return input + 1;
            int sleetTime;
            for(int i=0;i<config.getColumn()* config.getRow();i++){
                Result result = new Result();
                result.setPlace(i);
                results.add(result);
            }
            Collections.shuffle(results);
            for(int i=0;i<results.size();i++){
                results.get(i).setBeginTime(System.currentTimeMillis());
                Log.d(TAG, String.format("序号：%d,位置:%d,启示时间：%d",i,results.get(i).getPlace(),results.get(i).getBeginTime()));

                sleetTime = new Random().nextInt(config.getTipTimeFloat()) +config.getTipTimeConst();
                try {
                    Thread.sleep(sleetTime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                results.get(i).setTipTime(System.currentTimeMillis());
                Log.d(TAG, String.format("序号：%d,位置:%d,提示时间：%d",i,results.get(i).getPlace(),results.get(i).getTipTime()));

                sleetTime = new Random().nextInt(config.getTipBlankTimeFloat()) +config.getTipBlankTimeConst();
                try {
                    Thread.sleep(sleetTime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                results.get(i).setTipBlankTime(System.currentTimeMillis());
                Log.d(TAG, String.format("序号：%d,位置:%d,提示空白时间：%d",i,results.get(i).getPlace(),results.get(i).getTipBlankTime()));

                sleetTime = new Random().nextInt(config.getActionTimeFloat()) +config.getActionTimeConst();
                try {
                    Thread.sleep(sleetTime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                results.get(i).setActionTime(System.currentTimeMillis());
                Log.d(TAG, String.format("序号：%d,位置:%d,点击时间：%d",i,results.get(i).getPlace(),results.get(i).getActionTime()));

                sleetTime = new Random().nextInt(config.getActionBlankTimeFloat()) +config.getActionBlankTimeConst();
                try {
                    Thread.sleep(sleetTime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                results.get(i).setActionBlankTime(System.currentTimeMillis());
                Log.d(TAG, String.format("序号：%d,位置:%d,点击空白时间：%d",i,results.get(i).getPlace(),results.get(i).getActionBlankTime()));
            }
            return results;
        }
    }

}
