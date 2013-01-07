import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class iostream{
	public static void main(String[] args){
//		System.out.println("temporal saraseitor is temporal\n");
		try{
		FileInputStream fstream = new FileInputStream("/users/Juanma/code/euler/src/iostream.java");
		DataInputStream in = new DataInputStream(fstream);
		BufferedReader br = new BufferedReader(new InputStreamReader(in));
		String strLine;
		
		while ((strLine = br.readLine()) != null){
			// Print the content on the console
			System.out.println (strLine);
		}
		//Close the input stream
		in.close();
		}catch (Exception e){//Catch exception if any
			System.err.println("Error: " + e.getMessage());
		}
	}
}