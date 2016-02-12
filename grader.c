#include "T112_HW06_3.h"

int main()
{

    int n;
    scanf("%d", &n);

    double x[n];
    double y[n];
    double r[n];

    int i;

    for (i = 0; i < n; i++) {
        scanf("%lf", &x[i]);
        scanf("%lf", &y[i]);
        scanf("%lf", &r[i]);
    }

    int seg_count[NUM_QUAD];
    count_segment(n, x, y, r, seg_count);

    for (i = 0; i < NUM_QUAD; i++) {
        printf("%d ", seg_count[i]);
    }
    printf("\n");
    
    return 0;
}






