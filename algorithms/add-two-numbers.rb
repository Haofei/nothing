# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  convert_number_to_list(convert_list_to_number(l1) + convert_list_to_number(l2))
end

def convert_number_to_list(num)
  head = ListNode.new(num % 10)
  list = head
  while((num = num/10) > 0) do
    list.next = ListNode.new(num % 10)
    list = list.next
  end
  head
end

def convert_list_to_number(list)
  num = list.val
  i = 1
  while(list.next) do
    num = num + list.next.val * (10**i)
    list = list.next
    i+=1
  end
  num
end