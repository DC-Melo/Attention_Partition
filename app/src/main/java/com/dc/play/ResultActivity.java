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
import android.os.Environment;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.dc.play.bean.Result;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

public class ResultActivity extends AppCompatActivity {
    private ArrayList<Result> results;
    WebView tvResult ;
    Button btnStartAgain;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // 获取数据
        Bundle bundle = this.getIntent().getExtras();
        results = (ArrayList<Result>)bundle.getSerializable("ARRAYLIST");
        // 初始化界面元素
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_result);
        tvResult  = (WebView) findViewById(R.id.tv_result);
        btnStartAgain = (Button) findViewById(R.id.btn_start_again);
        // 绑定点击事件
        btnStartAgain.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(ResultActivity.this,MainActivity.class);
                startActivity(intent);
            }
        });

       // 显示测试结果，保存测试结果到外部存储
        if(results!=null){
            // 显示html到页面
            String htmlText = "<h2>测试结果</h2>";
            htmlText +="<table border=\"4\" align=\"center\" width=\"100%\">";
            htmlText +="<tr> <th>name</th> <th>index</th> <th>place</th> <th>begin</th> <th>tip</th> <th>tipblank</th> <th>action</th> <th>actionblank</th> </tr>";
            SimpleDateFormat timeZoneDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
            for(int i=0;i<results.size();i++){
                htmlText += "<tr>";
                htmlText += "<th>"+results.get(i).getTester()+"</th>";
                htmlText += "<th>"+String.valueOf(i)+"</th>";
                htmlText += "<th>"+String.valueOf(results.get(i).getPlace())+"</th>";
                htmlText += "<th>"+timeZoneDate.format(results.get(i).getBeginTime())+"</th>";
                htmlText += "<th>"+String.valueOf(results.get(i).getTipTime()         - results.get(i).getBeginTime())+"</th>";
                htmlText += "<th>"+String.valueOf(results.get(i).getTipBlankTime()    - results.get(i).getTipTime())+"</th>";
                htmlText += "<th>"+String.valueOf(results.get(i).getActionTime()      - results.get(i).getTipBlankTime())+"</th>";
                htmlText += "<th>"+String.valueOf(results.get(i).getActionBlankTime() - results.get(i).getActionTime())+"</th>";
                htmlText += "</tr>";
            }
            htmlText += "</table>";
            tvResult.getSettings().setDefaultTextEncodingName("UTF -8");
            tvResult.loadData(htmlText, "text/html; charset=UTF-8", null);
            
            // 保存数据到外部存储
            String dataCsv = "";
            for(int i=0;i<results.size();i++){
                dataCsv  += String.format("%s,%s,%s,%s,%s,%s,%s,%s,\n",
                            results.get(i).getTester(),
                            i,
                            results.get(i).getPlace(),
                            results.get(i).getBeginTime(),
                            results.get(i).getTipTime(),
                            results.get(i).getTipBlankTime(),
                            results.get(i).getActionTime(),
                            results.get(i).getActionBlankTime());
            }
            try{
                File sdCard = Environment.getExternalStorageDirectory();
                File file = new File(sdCard.getAbsolutePath(), "testdata.csv");
                if (!file.exists()){
                    file.createNewFile();
                    dataCsv = "name,index,place,begin,tip,tipblank,action,actionblank,\n" + dataCsv;
                }
                FileOutputStream fOut = new FileOutputStream(file,true);
                OutputStreamWriter osw = new OutputStreamWriter(fOut);
                osw.write(dataCsv+'\n');
                osw.flush();
                osw.close();
                Toast toast = Toast.makeText(getApplicationContext(), "数据保存成功,请打开："+file.getAbsolutePath(), Toast.LENGTH_LONG);
                toast.show();
            }catch (IOException ioe)
            {
                ioe.printStackTrace();
                Toast toast = Toast.makeText(getApplicationContext(), "数据保存失败，请打开保存权限", Toast.LENGTH_LONG);
                toast.show();
            }
        }
    }
}
