class Solution:
    
    def mergeTwoLists(self, list1, list2):
        list1 = list1
        list2 = list2
        list3 = []
        
        # for i in list1:
        #     list3.append(list1[i])

        # for i in list2:
        #     list3.append(list2[i])
        i = 0
        while i < len(list1):
            list3.append(list1[i])
            i += 1
            
        i = 0
        while i < len(list2):
            list3.append(list2[i])
            i += 1
            
        list3.sort()
        print(list3)
        
var = Solution()
var.mergeTwoLists([1,2,4],[1,3,4])


            
        
         