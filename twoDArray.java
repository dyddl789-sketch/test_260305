package question08;

import java.util.Random;

public class twoDArray {
	public static void main(String[] args) {
		int Array[][] = new int[3][4];
		Random rdnum = new Random();
		int sum = 0;
		for (int i = 0; i < Array.length; i++) {
			for (int j = 0; j < Array[0].length; j++) {
				Array[i][j] = (rdnum.nextInt(10)+1);
				System.out.print(Array[i][j]+"\t");
				sum += Array[i][j];
			}
			System.out.println();
		}
		System.out.println("합은 "+ sum);
	}
}