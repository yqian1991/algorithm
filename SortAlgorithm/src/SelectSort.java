//复杂度，平方阶 
public class SelectSort extends SortBase { 
      
    // 直接选择排序，先默认第一个最大，然后在后面的序列中找出比他大的来交换，这样不停的重复 
    public void selectSort(int[] array) { 
        for (int i = 0; i < array.length; i++) { 
            int max_potion = i; 
            for (int j = i + 1; j < array.length; j++) 
                if (array[max_potion] < array[j]) 
                    max_potion = j; 
            if (i != max_potion)// 如果默认失效 
                swap(array, i, max_potion); 
  
        } 
  
    } 
 // 直接选择排序，先默认第一个最小，然后在后面的序列中找出比他小的来交换，这样不停的重复 
    public void selectSortdown(int[] array) { 
        for (int i = 0; i < array.length; i++) { 
            int min_potion = i; 
            for (int j = i + 1; j < array.length; j++) 
                if (array[min_potion] > array[j]) 
                	min_potion=j ; // not function reverse the assignment sentence
            if (i != min_potion)// 如果默认失效 
                swap(array, i, min_potion); //
  
        } 
  
    } 
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new SelectSort().selectSort(a); 
        new SelectSort().printArray(a); 
        new SelectSort().selectSortdown(a); 
        new SelectSort().printArray(a);
    } 
  
}