regexTest = function(studentExpression, correctExpression, testCases){
        result=1
        for (i in 1:length(testCases)){
                student = str_extract(testCases[[i]], studentExpression)
                truth =str_extract(testCases[[i]],correctExpression)
                na.student = is.na(student)
                na.truth = is.na(truth)
                if(na.student!=na.truth){return(F)}
                if(na.student==F && na.truth==F){result = result*(student==truth)}
        }
        return(result==1)
}
