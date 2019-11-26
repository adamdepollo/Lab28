package co.grandcircus.Lab28.beans;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Data {
	private ArrayList<String> weather;

	public Data() {

	}

	public ArrayList<String> getWeather() {
		return weather;
	}

	public void setWeather(ArrayList<String> weather) {
		this.weather = weather;
	}

}
