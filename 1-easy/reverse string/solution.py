class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """      
        value1 = "a"
        for i in range(len(s)):
            value1 = s.pop()
            s.insert(i, value1)


