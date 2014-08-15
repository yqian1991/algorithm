public class BubbleSort extends SortBase { 
      
    // ð����һ�ּ򵥵Ľ�������[O(n*n)] 
	// ǰ�������Ƚϣ�������ÿһ�˱��뽻�����������Ԫ��Ϊֹ�����ж��˽���
    public void bubbleSort(int[] array) { 
        for (int i = 0; i < array.length; i++) 
            for (int j = 0; j < array.length - i - 1; j++) //array.length - i - 1
                if (array[j] < array[j + 1])// С������ð,�ɴ�С 
                    swap(array, j, j + 1); 
    } 
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new BubbleSort().bubbleSort(a); 
        new BubbleSort().printArray(a); 
    } 
  
}