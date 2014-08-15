//ϣ������ O(n��1.x�η�) 
public class ShellSort extends SortBase{ 
      
    //������������ֱ�Ӳ��� 
    public void shellInsert(int[] array, int gap) { 
        for (int i = gap; i < array.length; i++) { 
            int temp = array[i]; 
            int j = i; 
            for (; j >= gap && temp > (array[j - gap]); j -= gap) 
                array[j] = array[j - gap]; 
            array[j] = temp; 
        } 
    } 
      
      
    public void shellSort(int[] array) { 
        for (int gap = array.length / 2; gap > 0; gap /= 2)//ȡ���� 
            shellInsert(array, gap); 
    } 
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new ShellSort().shellSort(a); 
        new ShellSort().printArray(a);
    } 
}