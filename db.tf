module "my_sql_db" {
  source = "./rds_mysql_module"
  instance_name = "dev1_db"
  subnet_ids = [module.subnet_1.subnet_id, module.subnet_2.subnet_id]  
}
