package com.corana.Response;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;

import java.util.List;

@SuppressWarnings("unused")
public class States {

    @Expose
    private Long active;

    @Expose
    private Long confirmed;

    @Expose
    private Long deaths;
    @Expose
    private List<DistrictDatum> districtData;
    @Expose
    private String id;

    @Expose
    private Long recovered;
    @Expose
    private String state;

    public Long getActive() {
        return active;
    }

    public void setActive(Long active) {
        this.active = active;
    }

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

    public List<DistrictDatum> getDistrictData() {
        return districtData;
    }

    public void setDistrictData(List<DistrictDatum> districtData) {
        this.districtData = districtData;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Long getRecovered() {
        return recovered;
    }

    public void setRecovered(Long recovered) {
        this.recovered = recovered;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return new Gson().toJson(this);
    }
}
