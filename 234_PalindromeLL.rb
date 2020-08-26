# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}

def is_palindrome(head)
    temp = Array.new
    while head != nil
        temp << head.val
        head = head.next
    end
    
    temp == temp.reverse
end