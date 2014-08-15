//���Ӷȣ�ƽ���� 
public class SelectSort extends SortBase { 
      
    // ֱ��ѡ��������Ĭ�ϵ�һ�����Ȼ���ں�����������ҳ����������������������ͣ���ظ� 
    public void selectSort(int[] array) { 
        for (int i = 0; i < array.length; i++) { 
            int max_potion = i; 
            for (int j = i + 1; j < array.length; j++) 
                if (array[max_potion] < array[j]) 
                    max_potion = j; 
            if (i != max_potion)// ���Ĭ��ʧЧ 
                swap(array, i, max_potion); 
  
        } 
  
    } 
 // ֱ��ѡ��������Ĭ�ϵ�һ����С��Ȼ���ں�����������ҳ�����С����������������ͣ���ظ� 
    public void selectSortdown(int[] array) { 
        for (int i = 0; i < array.length; i++) { 
            int min_potion = i; 
            for (int j = i + 1; j < array.length; j++) 
                if (array[min_potion] > array[j]) 
                	min_potion=j ; // not function reverse the assignment sentence
            if (i != min_potion)// ���Ĭ��ʧЧ 
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