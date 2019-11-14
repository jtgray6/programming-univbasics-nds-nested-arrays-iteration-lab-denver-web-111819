def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_count=0
  final=[]
  while row_count<src.count do
    element_count=0
    while element_count<src.count do
      final[element_count]="I love "+src[element_count][0]+" and "+ src[element_count][1]+" on my pizza"
      element_count += 1
    end
    row_count += 1
  end
final
end

def find_greater_pair(src)
  row=0
  final=[]
  while row<src.count do
    element=0
    if src[row][element]>src[row][element+1]
      final[row]=src[row][element]
    else
      final[row]=src[row][element+1]
    end
    row += 1
  end
  final
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
end

def total_even_pairs(src)
  row=0
  total=0
  while row<src.count
    if src[row][0]%2 == 0 && src[row][1]%2 == 0
      total += (src[row][0]+src[row][1])
    end
    row += 1
  end
  total
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
end
