# Name of the role should match the name of the file
name "vagrant-test-box"

# override_attributes(
#     "mysql" => {
#         "server_root_password" => 'iloverandompasswordsbutthiswilldo',
#         "server_repl_password" => 'iloverandompasswordsbutthiswilldo',
#         "server_debian_password" => 'iloverandompasswordsbutthiswilldo'
#     }
# )

# Run list function we mentioned earlier
run_list(
  "recipe[webapp]"
)
