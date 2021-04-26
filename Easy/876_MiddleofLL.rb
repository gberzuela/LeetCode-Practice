# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

=begin
    brute force method 
    
def middle_node(head)
    length = 0
    temp = head
    while temp != nil
        length += 1
        temp = temp.next
    end
    
    mid = length/2.ceil
    ans = head
    while( mid > 0 )
        ans = ans.next
        mid -= 1
    end
    ans
end

=end

=begin
Array method: put all nodes in an array and return the middle index
def middle_node(head)
    nodeArr = Array.new
    index = 0
    while head != nil
        nodeArr[index] = head
        head = head.next
        index += 1
    end
    
    nodeArr[index/2]
end
=end

    # fast and slow pointer method: two pointers, one moving at twice the speed of another
    # fast pointer will reach the end while the slow pointer will reach the middle
    # return slow pointer
    # Time: O(n)
    # Space: O(1)
    def middle_node(head)
        slow, fast = head, head
        while( fast != nil && fast.next != nil )
            slow = slow.next;
            fast = fast.next.next;
        end
        slow
    end