//������,���Ӷ������Զ���,��һ������ѡ������ 
public class HeapSort extends SortBase { 
  
    public void heapsort(int[] a) { 
        for (int i = a.length / 2; i >= 0; i--) 
            percDown(a, i, a.length);//�Ӳ����ߵķ�Ҷ�ӽڵ㿪ʼ���ѣ��������µ��ϣ��Ϳ������öѵ����ʣ��������ּ��� 
        for (int i = a.length - 1; i > 0; i--) { 
            swap(a, 0, i); //ÿ�ε���������������С�������a[0]����������������� 
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
            if (child != n - 1 && a[child] > a[child + 1])//�Ƚ����ҽڵ� <
                child++; 
            if (tmp < a[child]) 
                a[i] = a[child];//�Ѵ����ҽڵ�ѡ������ֵ��ֵ���� 
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