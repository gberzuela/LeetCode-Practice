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

# iterative method
def reverse_list(head)
    if head == nil || head.next == nil
        return head
    end
    
    prev = nil
    
    while head != nil
        next_node = head.next
        head.next = prev
        prev = head
        head = next_node
    end
    
    prev
end

=begin
    # recursive method
def reverse_list(head)
    if head == nil || head.next == nil
        return head
    end
    
    newNode = reverse_list(head.next)
    head.next.next = head
    head.next = nil
    newNode
end
=end