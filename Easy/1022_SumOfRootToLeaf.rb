# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
 
def sum_root_to_leaf(root)
    return dfs(root, 0)
end

def dfs(root, sum)
    # Base case
    return 0 if root.nil?
    
    # Left shift binary operator
    sum = (sum << 1) + root.val
    p sum
    
    # Check if children are nil
    return sum if root.left.nil? && root.right.nil?
    return dfs(root.left, sum) + dfs(root.right, sum)
end