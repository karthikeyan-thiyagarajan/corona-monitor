package com.corana.Response;

import com.google.gson.annotations.Expose;

@SuppressWarnings("unused")
public class Total {

    @Expose
    private Long cases;
    @Expose
    private Long deaths;
    @Expose
    private Long recovered;

    public Long getCases() {
        return cases;
    }

    public void setCases(Long cases) {
        this.cases = cases;
    }

    public Long getDeaths() {
        return deaths;
    }

    public void setDeaths(Long deaths) {
        this.deaths = deaths;
    }

    public Long getRecovered() {
        return recovered;
    }

    public void setRecovered(Long recovered) {
        this.recovered = recovered;
    }

}
