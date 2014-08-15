//���Ӷ�ƽ���ף�ƽ�������Զ��� 
public class QuickSort extends SortBase { 
      
    // ��������ʱ��ȡ��� 
    public int partition(int[] array, int low, int high) { 
        int compare = array[high];// �����һ��high�Ƚ� 
        int i = low - 1; 
        for (int j = low; j < high; j++) 
            // ɨ��high֮ǰ���������ݣ��ѱ�high���ȫ����˳��ӵ�λ���� 
            if (array[j] > compare) 
                swap(array, ++i, j); //++i here 
        swap(array, ++i, high);// ��high����ֵ������������������֮��������ȡ������� 
        return i; 
    } 
  
    // ��ð�ݵĸĽ�����������,ԭ����ǵݹ�ķֶΣ����----���----�Ҷ�,��<��<�ң�������>��>�� 
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