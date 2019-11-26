package co.grandcircus.Lab28.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.Lab28.beans.ForecastValue;

@Controller
public class HomeController {

	private RestTemplate rt = new RestTemplate();

	@RequestMapping("/")
	public ModelAndView homePage() {
		return new ModelAndView("index");
	}

	@RequestMapping("/get-forecast")
	public ModelAndView getForecast(String lat, String lon) {

		try {
			ForecastValue fv = rt.getForObject(
					"https://forecast.weather.gov/MapClick.php?lat=" + String.format("%.07f", Double.parseDouble(lat))
							+ "&lon=" + String.format("%.07f", Double.parseDouble(lon)) + "&FcstType=json",
					ForecastValue.class);
			ModelAndView mv = new ModelAndView("weather-report", "weather", fv.getData().getWeather());
			mv.addObject("forecast", fv.getData());
			return mv;
		} catch (RestClientException e) {
			ModelAndView mv = new ModelAndView("index");
			mv.addObject("warn", "Location invalid. Outside of the U.S.");
			return mv;
		} catch (NumberFormatException e) {
			ModelAndView mv = new ModelAndView("index");
			mv.addObject("warn", "Location invalid. Outside of the U.S.");
			return mv;
		} catch (NullPointerException e) {
			ModelAndView mv = new ModelAndView("index");
			mv.addObject("warn", "Location invalid. Outside of the U.S.");
			return mv;
		}

	}

}
