lambdaCapitalize = -> (name) { puts name.capitalize }

def capitalize_name(lambdaCapitalize)
 lambdaCapitalize.call('first')
 lambdaCapitalize.call('second')
end


capitalize_name(lambdaCapitalize)
