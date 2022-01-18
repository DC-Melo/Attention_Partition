package com.dc.play;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.dc.play.bean.Result;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

public class ResultActivity extends AppCompatActivity {
    private ArrayList<Result> results;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle bundle = this.getIntent().getExtras();
        results = (ArrayList<Result>)bundle.getSerializable("ARRAYLIST");
        if(results!=null){
            for(int i=0;i<results.size();i++){
                System.out.println("action time:"+String.valueOf(i));
                System.out.println(results.get(i).getActionTime());
            }
        }

        try
        {
            String result = "";
            File sdCard = Environment.getExternalStorageDirectory();
            File file = new File(sdCard.getAbsolutePath(), "testdata.csv");
            if (!file.exists())
            {
                file.createNewFile();
                result = "title\n";
            }
            FileOutputStream fOut = new FileOutputStream(file,true);
            OutputStreamWriter osw = new OutputStreamWriter(fOut);
            result +="result\n";
            osw.write(result+'\n');
            osw.flush();
            osw.close();
        }catch (IOException ioe)
        {
            ioe.printStackTrace();
            Toast toast = Toast.makeText(getApplicationContext(), "数据保存失败，请打开保存权限", Toast.LENGTH_LONG);
            toast.show();
        }

        setContentView(R.layout.activity_result);
        Button startAgainButton = (Button) findViewById(R.id.btn_start_again);
        startAgainButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(ResultActivity.this,MainActivity.class);
                startActivity(intent);
            }
        });
    }
}