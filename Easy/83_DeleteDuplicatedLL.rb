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
def delete_duplicates(head)
    if head == nil || head.next == nil
        return head 
    end
    
    current, nextNode = head, head.next
    
    while nextNode != nil
        if current.val == nextNode.val
            nextNode = nextNode.next
            current.next = nextNode
        else
            nextNode = nextNode.next
            current = current.next
        end
    end
    
    head
end