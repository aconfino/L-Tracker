import org.apache.maven.cli.MavenCli;
import org.junit.Test;


public class SuperKicken {
	
	@Test
	public void superKicken(){
		MavenCli cli = new MavenCli();
		int result = cli.doMain(new String[]{"compile"},"test-folder", System.out, System.out);
		System.out.println("result: " + result);
	}

}
