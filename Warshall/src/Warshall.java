
public class Warshall {

	/**
	 * @param args
	 */
	 public static void print(int[][] G)
	 {
	      int i, j;

	      for (i=0; i < G.length; i++)
	      {
	         for (j=0; j < G.length; j++)
		    if ( G[i][j] != 0 )
		       System.out.println(i + " --> " + j);
	      }
	      System.out.println();
	}
	public static void main(String[] args) {
		//      0  1  2  3  
		//===================================================
		int[][] G =    {  { 0, 1, 0, 0 },  // 0
		{ 0, 0, 1, 0 },  // 1
		{ 0, 0, 0, 1 },  // 2
		{ 0, 0, 0, 0 } };// 3
		
		int i, j, k;
		
		
		System.out.println("Initial relation:");
		print(G);
		
		for ( k = 0; k < G.length; k++ ){
			for ( i = 0; i < G.length; i++ ){
				for ( j = 0; j < G.length; j++ ){
					if ( G[i][k] != 0 && G[k][j] != 0 ){
						G[i][j] = 1;
					}
				}
			}
		}
		
		
		System.out.println("Transitive closure:");
		print(G);
		
		}

	}
