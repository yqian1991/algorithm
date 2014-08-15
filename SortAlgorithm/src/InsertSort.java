//���Ӷ�ƽ���� 
public class InsertSort extends SortBase { 
  
    // ֱ�Ӳ�������,Ĭ�ϵ�һ������Ȼ������˿���������[O(n*n)] 
	// Ĭ�ϵ�ǰԪ��֮ǰ�Ѿ����ź���ģ�Ȼ�󽫵�ǰԪ�ز��뵽֮ǰ�������еĺ���λ��
    public void insertSort(int[] array) { 
        for (int i = 1; i < array.length; i++) { 
            for (int j = 0; j < i; j++) { // �� ��ǰԪ��֮ǰĬ�����ź���Ľ��бȽ�
                if (array[j] > array[i]) 
                    swap(array, i, j);// ʹ�ý���������Ҳ�����κ��� 
            } 
        } 
    } 
  
    //����һ��ʵ��,��shell���벿�� 
    public void insertionSort(int[] a) { 
        for (int p = 1; p < a.length; p++) { 
            int tmp = a[p]; 
            int j = p; 
            for (; j > 0 && tmp>a[j - 1]; j--) 
                a[j] = a[j - 1];//���С�������ƶ� 
                a[j] = tmp;//��������Ԫ�ز嵽�ƶ���Ŀ�λ�� 
        } 
    } 
    public static void main(String args[]){ 
        int a[] ={0,5,4,3,2,1,10,-1,123,-5}; 
        new InsertSort().insertSort(a); 
        new InsertSort().printArray(a); 
        new InsertSort().insertionSort(a); 
        new InsertSort().printArray(a); 
    } 
  
}