package Features;

import com.intuit.karate.junit5.Karate;

public class JUnitKarateRunner {
	
	@Karate.Test
	Karate GETAPITest(){
		return  Karate.run("003_GETRequest").relativeTo(getClass());
	}
	@Karate.Test
	Karate GETQueryAPITest(){
		return  Karate.run("004_GET_Query_params").relativeTo(getClass());
	}
	@Karate.Test
	Karate APIHeaderTest(){
		return  Karate.run("005_APIHeaders").relativeTo(getClass());
	}
	@Karate.Test
	Karate POSTAPITest(){
		return  Karate.run("005_POST_Request").relativeTo(getClass());
	}

}
