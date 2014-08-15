//堆排序,复杂度是线性对数,是一种树形选择排序 
public class HeapSort extends SortBase { 
  
    public void heapsort(int[] a) { 
        for (int i = a.length / 2; i >= 0; i--) 
            percDown(a, i, a.length);//从层次最高的非叶子节点开始建堆，这样从下到上，就可以利用堆的性质，可做部分记忆 
        for (int i = a.length - 1; i > 0; i--) { 
            swap(a, 0, i); //每次调整都把最大或者最小输出到了a[0]处，把它交换到最后 
            percDown(a, 0, i); 
        } 
    } 
  
    private int leftChild(int i) { 
        return 2 * i + 1; 
    } 
  
    private void percDown(int[] a, int i, int n) { 
        int child; 
        int tmp; 
        for (tmp = a[i]; leftChild(i) < n; i = child) { 
            child = leftChild(i); 
            if (child != n - 1 && a[child] > a[child + 1])//比较左右节点 <
                child++; 
            if (tmp < a[child]) 
                a[i] = a[child];//把从左右节点选出来的值赋值到根 
            else
                break; 
        } 
        a[i] = tmp; 
    } 
      
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new HeapSort().heapsort(a); 
        new HeapSort().printArray(a); 
    } 
}