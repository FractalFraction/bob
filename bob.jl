function issilence(input)
  all(c->isspace(c),input)
end

function isquestion(input)
  rstrip(input)[end] == '?'
end

function isyell(input)
  #Add a fake lowercase string at the end to avoid having an empty string which would evaluate to true
    filter_input=filter(s -> isletter(s),input)
    isempty(filter_input) ? false : all(c->isuppercase(c),filter_input)
end

function bob(stimulus)
    if issilence(stimulus)
       return "Fine. Be that way!"
    else
       bool_ques=isquestion(stimulus) 
       bool_yell=isyell(stimulus)
       
       if bool_ques && bool_yell
        return "Calm down, I know what I'm doing!"
       elseif bool_ques
        return "Sure."
      
       elseif bool_yell
        return "Whoa, chill out!"
      
       else
        return "Whatever."
       end
    
    end
 end