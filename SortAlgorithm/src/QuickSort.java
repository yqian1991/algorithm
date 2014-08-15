//复杂度平方阶，平均是线性对数 
public class QuickSort extends SortBase { 
      
    // 快速排序时获取轴点 
    public int partition(int[] array, int low, int high) { 
        int compare = array[high];// 和最后一个high比较 
        int i = low - 1; 
        for (int j = low; j < high; j++) 
            // 扫描high之前的所有数据，把比high大的全部按顺序从低位排列 
            if (array[j] > compare) 
                swap(array, ++i, j); //++i here 
        swap(array, ++i, high);// 将high处的值插入比他大的所有数据之后，这样就取到了轴点 
        return i; 
    } 
  
    // 对冒泡的改进，快速排序,原理就是递归的分段，左端----轴点----右端,左<轴<右，或者左>轴>右 
    public void quickSort(int[] array, int low, int high) { 
        if (low < high) { 
            int pivot = partition(array, low, high); 
            quickSort(array, low, pivot - 1); 
            quickSort(array, pivot + 1, high); 
        } 
  
    } 
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new QuickSort().quickSort(a, 0, 9); 
        new QuickSort().printArray(a); 
    } 
}