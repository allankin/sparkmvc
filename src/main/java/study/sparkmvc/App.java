package study.sparkmvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import spark.Spark;

/**
 * Hello world!
 *
 */
public class App {
	 
	private static Logger log = LoggerFactory.getLogger(App.class);
	
	public static void startUp(){
		Spark.setPort(80);
		Spark.get("/hello", (request,response)->{
			String content = request.body();
			log.info("hello.....");
			return "hello world...TimeMillis:"+System.currentTimeMillis();
		});
		
		 
	}
	
	public static void main(String[] args) {
		startUp();
	}
}