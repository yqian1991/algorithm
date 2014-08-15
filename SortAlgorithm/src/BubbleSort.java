public class BubbleSort extends SortBase { 
      
    // 冒泡是一种简单的交换排序[O(n*n)] 
	// 前后两个比较，交换，每一趟必须交换到最后两个元素为止，进行多趟交换
    public void bubbleSort(int[] array) { 
        for (int i = 0; i < array.length; i++) 
            for (int j = 0; j < array.length - i - 1; j++) //array.length - i - 1
                if (array[j] < array[j + 1])// 小的往上冒,由大到小 
                    swap(array, j, j + 1); 
    } 
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new BubbleSort().bubbleSort(a); 
        new BubbleSort().printArray(a); 
    } 
  
}