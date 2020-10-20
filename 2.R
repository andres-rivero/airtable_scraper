file <- "C:\\Users\\andre\\Downloads\\freeformatter-out.json"

asas <- read_file(file)
company_name <- str_locate_all(asas, "fld90oBfX33xZ2NUp") %>%
  as.data.frame()
company_url <- str_locate_all(asas, "fldmT0VuN0nKQygJO") %>%
  as.data.frame()
company_description <- str_locate_all(asas, "fldNIqTy0965efVg7") %>%
  as.data.frame()
company_info <- str_locate_all(asas, "fld6PNkl7FKJPv5x9") %>%
  as.data.frame()


company <- c(str_sub(asas, company_name[1,2]+5, company_url[1,1]-7),
             str_sub(asas, company_url[1,2]+5, company_description[1,1]-7),
             str_sub(asas, company_description[1,2]+5, company_info[1,1]-7)
)

company2 <- c(str_sub(asas, company_name[2,2]+5, company_url[2,1]-7),
             str_sub(asas, company_url[2,2]+5, company_description[2,1]-7),
             str_sub(asas, company_description[2,2]+5, company_info[2,1]-7)
)

companies <- c()

for (i in 1:nrow(company_name)) companies <- rbind(companies,{
  c(str_sub(asas, company_name[i,2]+5, company_url[i,1]-7),
    str_sub(asas, company_url[i,2]+5, company_description[i,1]-7),
    str_sub(asas, company_description[i,2]+5, company_info[i,1]-7)
  )
})

write.csv(companies, "C:/Users/andre/Desktop/companies.csv")
