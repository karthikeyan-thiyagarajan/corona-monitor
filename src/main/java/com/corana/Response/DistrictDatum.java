package com.corana.Response;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;

@SuppressWarnings("unused")
public class DistrictDatum {

    @Expose
    private Long confirmed;
    @Expose
    private Long deaths;
    @Expose
    private String id;
    @Expose
    private String name;
    @Expose
    private Object recovered;
    @Expose
    private Object state;
    @Expose
    private String zone;

    public Long getConfirmed() {
        return confirmed;
    }

    public void setConfirmed(Long confirmed) {
        this.confirmed = confirmed;
    }

    public Long getDeaths() {
        return deaths;
    }

    public void setDeaths(Long deaths) {
        this.deaths = deaths;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Object getRecovered() {
        return recovered;
    }

    public void setRecovered(Object recovered) {
        this.recovered = recovered;
    }

    public Object getState() {
        return state;
    }

    public void setState(Object state) {
        this.state = state;
    }

    public String getZone() {
        return zone;
    }

    public void setZone(String zone) {
        this.zone = zone;
    }

    @Override
    public String toString() {
        return new Gson().toJson(this);
    }
}
