#include<bits/stdc++.h>

int main(){
    
    int n;
    printf("Enter the number of process: ");
    scanf("%d", &n);
    int Process[n];
    int p[n];
    for(int i=0; i<n; i++){
        scanf("%d", &Process[i]);
        p[i] = i;
    }

    float waitingTime = 0, TurnAroundTime = 0;
    for(int i=0; i<n; i++){
        TurnAroundTime = waitingTime + Process[i];
        printf("\nP%d \t\t %d \t\t %.1f \t\t %.1f",i+1, Process[i], waitingTime, TurnAroundTime);
        if(i+1 != n) waitingTime += Process[i];
    }
    printf("\n\n Avg waiting time %.3f", waitingTime/n);
    printf("\nAvg Trun Around time %.3f", TurnAroundTime/n);
    printf("\n\n");

    // bubble sorting ...
    for(int i=0; i<n; i++){
        for(int j=i+1; j<n; j++){
            if(Process[j] > Process[j-1]){
                int tmp = Process[j];
                Process[j] = Process[j-1];
                Process[j-1] = tmp;

                tmp = p[j];
                p[j] = p[j-1];
                p[j-1] = tmp;
            }
        }
    }
    for(int i=0; i<n; i++){
        printf("p%d %d \n", p[i]+1, Process[i]);
    }
    waitingTime = 0;
    TurnAroundTime = 0;
    for(int i=0; i<n; i++){
        TurnAroundTime = waitingTime + Process[i];
        printf("\nP%d \t\t %d \t\t %.1f \t\t %.1f",p[i]+1, Process[i], waitingTime, TurnAroundTime);
        if(i+1 != n) waitingTime += Process[i];
    }
    printf("\n\n Avg waiting time %.3f", waitingTime/n);
    printf("\nAvg Trun Around time %.3f", TurnAroundTime/n);

    return 0;
}