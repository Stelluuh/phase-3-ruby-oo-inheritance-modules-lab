module Findable
    module ClassMethods
        def find_by_name(name)
            # @@songs.detect{|a| a.name == name}
            self.all.detect{|a| a.name}
        end
    end
end

# Inside the Findable.find_by_name method, we can't use a class-specific class variable like @@artists or @@songs, because our method would break when included in any class that didn't define such a variable.

# Is there a way to reference the collection of all of the instances of a class, without specifically referencing class variables that are only defined in certain classes?