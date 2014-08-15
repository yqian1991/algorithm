//归并排序[O(nlogn)] 分而治之,分解再合并，map reduce? 
public class MergeSort extends SortBase { 
  
    public void mergeSort(int[] a) { 
        int[] tmpArray = new int[a.length]; 
        mergeSort(a, tmpArray, 0, a.length - 1); 
    } 
  
    //分割 
    private  void mergeSort(int[] a, int[] tmpArray, int left, int right) { 
        if (left < right) { 
            int center = (left + right) / 2; 
            mergeSort(a, tmpArray, left, center); 
            mergeSort(a, tmpArray, center + 1, right); 
            merge(a, tmpArray, left, center + 1, right); 
        } 
    } 
  
    //归并 
    private  void merge(int[] a, int[] tmpArray, int leftPos, 
            int rightPos, int rightEnd) { 
        int leftEnd = rightPos - 1; 
        int tmpPos = leftPos; 
        int numElements = rightEnd - leftPos + 1; 
  
        // Main loop 
        while (leftPos <= leftEnd && rightPos <= rightEnd) 
            if (a[leftPos] <= (a[rightPos])) 
                tmpArray[tmpPos++] = a[leftPos++]; 
            else
                tmpArray[tmpPos++] = a[rightPos++]; 
  
        while (leftPos <= leftEnd) 
            // Copy rest of first half 
            tmpArray[tmpPos++] = a[leftPos++]; 
  
        while (rightPos <= rightEnd) 
            // Copy rest of right half 
            tmpArray[tmpPos++] = a[rightPos++]; 
  
        // Copy tmpArray back 
        for (int i = 0; i < numElements; i++, rightEnd--) 
            a[rightEnd] = tmpArray[rightEnd]; 
    } 
      
    public static void main(String args[]){ 
        int a[] = {9,8,6,7,5,4,3,2,1,0}; 
        new MergeSort().mergeSort(a); 
        new MergeSort().printArray(a); 
    } 
  
}