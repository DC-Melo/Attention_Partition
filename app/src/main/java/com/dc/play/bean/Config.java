package com.dc.play.bean;


import android.text.Editable;

import java.io.Serializable;

public class Config  implements Serializable {
    private String tester="tester";
    private int testFunction = 0;
    private int row = 3;
    private int column = 3;
    private int tipTimeConst = 200;
    private int tipTimeFloat = 200;
    private int tipBlankTimeConst = 200;
    private int tipBlankTimeFloat = 200;
    private int actionTimeConst = 1000;
    private int actionTimeFloat = 1000;
    private int actionBlankTimeConst = 200;
    private int actionBlankTimeFloat = 200;

    public String getTester() {
        return tester;
    }

    public void setTester(String tester) {
        this.tester = tester;
    }

    public int getTestFunction() {
        return testFunction;
    }

    public void setTestFunction(int testFunction) {
        this.testFunction = testFunction;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getColumn() {
        return column;
    }

    public void setColumn(int column) {
        this.column = column;
    }

    public int getTipTimeConst() {
        return tipTimeConst;
    }

    public void setTipTimeConst(int tipTimeConst) {
        this.tipTimeConst = tipTimeConst;
    }

    public int getTipTimeFloat() {
        return tipTimeFloat;
    }

    public void setTipTimeFloat(int tipTimeFloat) {
        this.tipTimeFloat = tipTimeFloat;
    }

    public int getTipBlankTimeConst() {
        return tipBlankTimeConst;
    }

    public void setTipBlankTimeConst(int tipBlankTimeConst) {
        this.tipBlankTimeConst = tipBlankTimeConst;
    }

    public int getTipBlankTimeFloat() {
        return tipBlankTimeFloat;
    }

    public void setTipBlankTimeFloat(int tipBlankTimeFloat) {
        this.tipBlankTimeFloat = tipBlankTimeFloat;
    }

    public int getActionTimeConst() {
        return actionTimeConst;
    }

    public void setActionTimeConst(int actionTimeConst) {
        this.actionTimeConst = actionTimeConst;
    }

    public int getActionTimeFloat() {
        return actionTimeFloat;
    }

    public void setActionTimeFloat(int actionTimeFloat) {
        this.actionTimeFloat = actionTimeFloat;
    }

    public int getActionBlankTimeConst() {
        return actionBlankTimeConst;
    }

    public void setActionBlankTimeConst(int actionBlankTimeConst) {
        this.actionBlankTimeConst = actionBlankTimeConst;
    }

    public int getActionBlankTimeFloat() {
        return actionBlankTimeFloat;
    }

    public void setActionBlankTimeFloat(int actionBlankTimeFloat) {
        this.actionBlankTimeFloat = actionBlankTimeFloat;
    }

}
