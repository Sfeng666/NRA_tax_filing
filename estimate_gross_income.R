# assuming claim treaty in Form 8833; assistantship instead of fellowship; no investments
# independent variables - change based on your own situation
wage.total <- 30000 # source: RA contract
insurance.deduct.beforetax <- 28*24 # source: income statement - Dean & Dental + DeltaVision
insurance.deduct.aftertax <- 9.5*24 # source: income statement - Accident Insurance + Accidental Death
treaty <- 5000 # source: China-US tax treaty 20(c)
# tuition <- 1276 # source: box 1 , form 1098-T
tuition <- 2245 # notice: normally should be the same as 1098-T tuition
exemption <- 700 # source: Form 1-NPR box 36

# response variables
## state income tax 
income.withhold.state <- wage.total - insurance.deduct.beforetax
income.taxable.state <- wage.total - treaty - insurance.deduct.beforetax - tuition - exemption 
tax.state.withhold <- (income.withhold.state - 24250)*0.053 + 993 # source: 2021 WI state individual income tax rates
tax.state <- ((income.taxable.state + tuition - 12120)*0.0465 + 429)*income.taxable.state/(income.taxable.state + tuition) # source: 2021 WI state individual income tax rates

## federal income tax
income.withhold.federal <- income.withhold.state
income.taxable.federal <- wage.total - treaty - insurance.deduct.beforetax - tuition - tax.state.withhold # source: Form 1040-NR
tax.federal.withhold <- (income.withhold.federal - 10275)*0.12 + 1027.5 # source: 2022 federal income tax rates
tax.federal <- (income.taxable.federal - 10275)*0.12 + 1027.5 # source: 2022 federal income tax rates

## estimated gross income before receiving tax return
income.gross.withhold <- wage.total - insurance.deduct.beforetax - insurance.deduct.aftertax - tuition - tax.state.withhold - tax.federal.withhold
income.gross.withhold

## estimated gross income after receiving tax return
income.gross.return <- wage.total - insurance.deduct.beforetax - insurance.deduct.aftertax - tuition - tax.state - tax.federal
income.gross.return