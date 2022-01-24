package com.dc.play;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

import com.dc.play.bean.Config;
import com.dc.play.bean.GameMsg;
import com.dc.play.bean.Result;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Random;

public class DisplayThread extends Thread {
    private static final String TAG = DisplayThread.class.getSimpleName();
    private Config config;
    private boolean isGamePause;
    private int index;
    private Handler mainHandler;
    private ArrayList<Result> results = new ArrayList<>();

    public DisplayThread(Context context, Handler handler, Config config) {
        this.mainHandler = handler;
        this.config = config;

        this.results.clear();
        this.isGamePause = false;
        this.index = 0;
        for(int i=0;i<config.getColumn()*config.getRow();i++){
            Result result = new Result();
            result.setPlace(i);
            result.setTester(config.getTester());
            this.results.add(result);
        }
        Collections.shuffle(this.results);
    }

    public void setActionTime(){
        results.get(index).setActionTime(System.currentTimeMillis());
    }
    public void setThreadPause(){
        this.isGamePause = true;
    }
    public void setThreadResume(){
        this.isGamePause = false;
    }
    @Override
    public void run() {
        super.run();
        mainHandler.sendEmptyMessage(GameMsg.MSG_GAME_START);
        int sleepms = config.getTipTimeConst()*2;
        try {
            Log.e(TAG, String.format("begin %s",sleepms));
            Thread.sleep(sleepms);
        } catch (InterruptedException e) {
            e.printStackTrace();
            Log.e(TAG, e.getMessage());
        }
        while(index < config.getRow()*config.getColumn()){

                if (index >= config.getRow()*config.getColumn()) break;
                results.get(index).setBeginTime(System.currentTimeMillis());
                mainHandler.sendEmptyMessage(GameMsg.MSG_GAME_TIP);
                if(config.getTipTimeFloat()>0) sleepms = new Random().nextInt(config.getTipTimeFloat()) + config.getTipTimeConst();
                else sleepms = config.getTipTimeConst();
                try {
                    Log.e(TAG, String.format("tip %s",sleepms));
                    Thread.sleep(sleepms);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                while(isGamePause);
                results.get(index).setTipTime(System.currentTimeMillis());

                mainHandler.sendEmptyMessage(GameMsg.MSG_GAME_TIP_BLANK);
                if(config.getTipBlankTimeFloat()>0) sleepms = new Random().nextInt(config.getTipBlankTimeFloat()) + config.getTipTimeConst();
                else sleepms = config.getTipBlankTimeConst();
                try {
                    Log.e(TAG, String.format("tip blank %s",sleepms));
                    Thread.sleep(sleepms);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                results.get(index).setTipBlankTime(System.currentTimeMillis());

                Message message = new Message();
                message.what = GameMsg.MSG_GAME_ACTION;
                message.obj=results.get(index).getPlace();
                mainHandler.sendMessage(message);
//                wait until action time is set
                while(results.get(index).getActionTime()==0);

                mainHandler.sendEmptyMessage(GameMsg.MSG_GAME_ACTION_BLANK);
                if(config.getActionBlankTimeFloat()>0) sleepms = new Random().nextInt(config.getActionBlankTimeFloat()) + config.getActionBlankTimeConst();
                else sleepms = config.getActionBlankTimeConst();
                try {
                    Log.e(TAG, String.format("action blank %s",sleepms));
                    Thread.sleep(sleepms);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    Log.e(TAG, e.getMessage());
                }
                results.get(index).setActionBlankTime(System.currentTimeMillis());
                index++;

        }
        Message message = new Message();
        message.what = GameMsg.MSG_GAME_END;
        message.obj=results;
        mainHandler.sendMessage(message);
    }
}
