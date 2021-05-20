def take array, ind=nil
  val = []
  if ind == nil
      val = array
      val.delete_at(0)
  else
      array.each_with_index do |var, index|
          if index >= ind
              val << var
          end
      end
  end
  val
end

#does the same that the take method from string