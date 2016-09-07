
a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

#.at or .fetch - prints the value
# puts a.at(3)
# puts a.fetch(3)

# x= a+b
# puts x.to_s #converts to string and combines a and b 

#method to remove a value without using delete
# x = (a+b) - c 
#this removes whatever value is in c (it will remove dojo and value 9)
# puts x.to_s 
#print x to a string

#shuffle - shuffles elements in the arrays randomly 
# puts a.shuffle.join('-') #shuffles a first and then joins each values in the array with the dash

#delete
# a.delete("Choi")
# puts a 

#reverse
# a.reverse!
# puts a 

#length
# puts a.length 

#sort
# puts a.sort 
#sorts by alpabetically 
# puts b.sort.reverse 
#sorts by lowest to highest but .reverse has it print from highest to lowest 

#slice
# puts b.slice(0..4)
#slices at indexes for arrays .. is inclusive while ... is exclusive

#join
# puts b.join(', ') 
#returns values of the elements joined by comma and space 

#insert
# puts a.insert(0, "Sneha") 
#inserts the value "sneha" at a[0]\

#values_at
# puts a.values_at(0,2).join(' and ')
#prints values at array[0] and array[2] and joins it with the string and 








