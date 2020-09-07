class MyLinkedList

    =begin
        Initialize your data structure here.
    =end
        
        attr_accessor :head
        def initialize()
            @head = nil
        end
    
    
    =begin
        Get the value of the index-th node in the linked list. If the index is invalid, return -1.
        :type index: Integer
        :rtype: Integer
    =end
        def get(index)
            return -1 if @head.nil?
            
            temp = @head
            for i in 0...index
                temp = temp.next
            end
            
            if temp.nil?
                return -1
            end
            temp.val
        end
    
    
    =begin
        Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
        :type val: Integer
        :rtype: Void
    =end
        def add_at_head(val)
            newNode = Node.new(val, @head)
            @head = newNode
        end
    
    
    =begin
        Append a node of value val to the last element of the linked list.
        :type val: Integer
        :rtype: Void
    =end
        def add_at_tail(val)
            newNode = Node.new(val)
            if @head.nil?
                @head = newNode
                return
            end
            
            temp = @head
            while !temp.next.nil?
                temp = temp.next
            end
            
            temp.next = newNode
        end
    
    
    =begin
        Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
        :type index: Integer
        :type val: Integer
        :rtype: Void
    =end
        def add_at_index(index, val)
            if index == 0
                add_at_head(val)
            end
            
            temp = @head
            for i in 0...index-1
                temp = temp.next
            end
        
            if temp.nil?
                add_at_tail(val)
            else
                newNode = Node.new(val, temp.next)
                temp.next = newNode
            end
        end
    
    
    =begin
        Delete the index-th node in the linked list, if the index is valid.
        :type index: Integer
        :rtype: Void
    =end
        def delete_at_index(index)
            if index < 0
                return
            elsif index == 0
                @head = head.next
                return
            end
            
            temp = @head
            for i in 0...index-1
                temp = temp.next
            end
            
            if temp.next.nil?
                return
            else
                temp.next = temp.next.next
            end
        end
    
    
    end
    
    class Node
        attr_accessor :val, :next
        def initialize(val=0, _next = nil)
            @val = val
            @next = _next
        end
    end
    
    # Your MyLinkedList object will be instantiated and called as such:
    # obj = MyLinkedList.new()
    # param_1 = obj.get(index)
    # obj.add_at_head(val)
    # obj.add_at_tail(val)
    # obj.add_at_index(index, val)
    # obj.delete_at_index(index)