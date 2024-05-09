#include<bits/stdc++.h>
using namespace std;

void calculateRatio(int number_of_pages, int number_of_hits, int page_foult_count){
    printf("\nPage Hit Ratio: %.4f\n", (number_of_hits*1.0/number_of_pages)*100);
    printf("Page Fault Ratio: %.4f\n", (page_foult_count*1.0/number_of_pages)*100);
}


void FIFO_Page_Replacement(int n, int pages[], int number_of_frame){
    int memory[100];
    for(int i=0; i<number_of_frame; i++){
        memory[i] = -1;
    }

    int number_of_pages = n;
    int j = 0, memory_index = 0, page_foult_count = 0, number_of_hits = 0;
    
    for(int i=0; i<number_of_pages; i++){
        int good = 0;
        for(j=0; j<number_of_frame; j++){
            if(memory[j] == pages[i]){
                number_of_hits++;
                // printf("Hit occured in index: \n", i);
                good = 1;
                break;
            }
        }
        if(j == number_of_frame){
            memory[memory_index] = pages[i];
            memory_index++;
            page_foult_count++;

            // print page foult count
            // printf("Page Fault No: %d",page_foult_count);
        }

        // print memory
        printf("Memery: ");
        for(int k=0; k<number_of_frame; k++){
            printf("%d ",memory[k]);
        }
        if(good){
            printf("\tH\n");
        }
        else{
            printf("\tM\n");
        }

        if(memory_index == number_of_frame) memory_index = 0; 

    }
    calculateRatio(number_of_pages, number_of_hits, page_foult_count);
}

int main(){
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);    
    #ifndef ONLINE_JUDGE 
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    #endif
    int t = 1;
    // printf("Please enter the number of testcase: ");
    // scanf("%d",&t);
    while(t--){
        int n, number_of_frame;
        int pages[n];
        printf("Enter number of pages and frame: \n\n");
        scanf("%d %d",&n, &number_of_frame);
        for(int i=0; i<n; i++){
            scanf("%d",&pages[i]);
        }
        FIFO_Page_Replacement(n, pages, number_of_frame);
    }
    return 0;
}