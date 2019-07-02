# chef
```
chef generate repo tss --to generate new repository
chef diff --git master
chef diff --git v1.0.0
chef diff --git master...dev
chef diff --git v1.0.0...master
chef diff staging
chef diff production...staging
chef-apply -e "package 'nano'" -------- install the packages of nano
chef-apply -e "package 'vim'"       --- install the package of vim
chef gem list
chef gem list chef-dk
chef gem list knife
chef gem search kitchen
chef exec rspec


knife cookbook
knife cookbook site
knife bootstrap
knife client
knife configure
knife data bag
knife delete
knife deps
knife diff
knife download
knife edit
knife environment
knife exec
knife list
knife node
knife raw
knife recipe list
knife role
knife search
knife serve
knife show
knife spork
knife ssh
knife ssl_check
knife ssl_fetch
knife status
knife tag
knife upload
knife user
knife xargs
knife opc

************************************************************************************
ChefSpec is a framework that tests resources and recipes as part of a simulated Chef Infra Client run.
 ChefSpec tests execute very quickly. When used as part of the cookbook authoring workflow,
 ChefSpec tests are often the first indicator of problems that may exist within a cookbook.

https://docs.chef.io/chefspec.html
*************************************************************************************
chef-vault is a Ruby Gem that is included in Chef Workstation and the Chef Infra Client.
 chef-vault allows the encryption of a data bag item by using the public keys of a list of nodes,
 allowing only those nodes to decrypt the encrypted values.
 chef-vault uses the knife vault subcommand.

knife vault create VAULT ITEM VALUES (options)
knife vault delete VAULT ITEM (options)
knife vault download VAULT ITEM PATH (options)
knife vault edit VAULT ITEM (options)
knife vault isvault VAULT ITEM (options)
knife vault itemtype VAULT ITEM (options)
knife vault list (options)
knife vault refresh VAULT ITEM
knife vault remove VAULT ITEM VALUES (options)
knife vault rotate all keys
knife vault rotate keys VAULT ITEM (options)
knife vault show VAULT [ITEM] [VALUES] (options)
knife vault update VAULT ITEM VALUES (options)


https://docs.chef.io/chef_vault.html
*******************************************
available generators
*************************************
Available generators:
  cookbook        Generate a single cookbook------chef generate cookbook raja
  recipe          Generate a new recipe
  attribute       Generate an attributes file
  template        Generate a file template
  file            Generate a cookbook file
  helpers         Generate a cookbook helper file in libraries
  resource        Generate a custom resource
  repo            Generate a Chef code repository
  policyfile      Generate a Policyfile for use with the install/push commands
  generator       Copy ChefDK's generator cookbook so you can customize it
  build-cookbook  Generate a build cookbook for use with Chef Workflow (Delivery)


****************************************************************************
-g GENERATOR_COOKBOOK_PATH, --generator-cookbook GENERATOR_COOKBOOK_PATH
The path at which a cookbook named code_generator is located. This cookbook is used by the chef generate subcommands to generate cookbooks, cookbook files, templates, attribute files, and so on. Default value: lib/chef-dk/skeletons, under which is the default code_generator cookbook that is included as part of ChefDK.
-b, --berks
Create a Berksfile in the cookbook. Default value: enabled. This is disabled if the --policy option is given.
-C COPYRIGHT, --copyright COPYRIGHT
Specify the copyright holder for copyright notices in generated files. Default value: The Authors
-d, --delivery
Generate a delivery config file and build cookbook inside the new cookbook. Default value: disabled. This option is disabled. It has no effect and exists only for compatibility with past releases
-m EMAIL, --email EMAIL
Specify the email address of the author. Default value: you@example.com.
-a KEY=VALUE, --generator-arg KEY=VALUE
Sets a property named KEY to the given VALUE on the generator context object in the generator cookbook. This allows custom generator cookbooks to accept optional user input on the command line.
-I LICENSE, --license LICENSE
Sets the license. Valid values are all_rights, apache2, mit, gplv2, or gplv3. Default value: all_rights.
-P, --policy
Create a Policyfile in the cookbook instead of a Berksfile. Default value: disabled
-h, --help
Show help for the command.
-v, --version
The version of the Chef Infra Client.
------------------------------------------------
different types to generate with chef
-----------------------------------------------
1.chef generate build-cookbook¶
2.chef generate file¶
3.chef generate resource¶
4.chef generate recipe¶
5.chef generate repo¶
6.chef generate template¶
*******************************************************************
chef shell-init¶
Use the chef shell-init subcommand to set the Ruby included in ChefDK as the system Ruby. ChefDK is designed to allow the isolation of applications used by ChefDK from other Ruby development tools that may be present on the workstation. This supports Bash, fish, Windows PowerShell (posh), and zsh.
bash zsh fish PowerShell (posh)
chef shell-init SHELL_NAME (options)
chef shell-init powershell | Invoke-Expression

*******************************************************
chef env
************************************
Chef Development Kit:
  ChefDK:
    ChefDK Version: 4.0.60
    ChefDK Home: "/home/ubuntu/.chefdk"
    ChefDK Install Directory: "/opt/chefdk"
    Policyfile Config:
      Cache Path: "/home/ubuntu/.chefdk/cache"
      Storage Path: "/home/ubuntu/.chefdk/cache/cookbooks"
  Ruby:
    Ruby Executable: "/opt/chefdk/embedded/bin/ruby"
    Ruby Version: 2.6.3
    RubyGems:
      RubyGems Version: 3.0.3
      RubyGems Platforms:
      - ruby
      - x86_64-linux
      Gem Environment:
        GEM ROOT: "/opt/chefdk/embedded/lib/ruby/gems/2.6.0"
        GEM HOME: "/home/ubuntu/.chefdk/gem/ruby/2.6.0"
        GEM PATHS:
        - "/home/ubuntu/.chefdk/gem/ruby/2.6.0"
        - "/opt/chefdk/embedded/lib/ruby/gems/2.6.0"
  Path:
  - "/opt/chefdk/bin"
  - "/home/ubuntu/.chefdk/gem/ruby/2.6.0/bin"
  - "/opt/chefdk/embedded/bin"
  - "/usr/local/sbin"
  - "/usr/local/bin"
  - "/usr/sbin"
  - "/usr/bin"
  - "/sbin"
  - "/bin"
  - "/usr/games"
  - "/usr/local/games"
  - "/snap/bin"
  - "/opt/chefdk/gitbin"
**********************************************************************



chef-shell -z ---------creating infrastructure for client
tracing on  ------for client
tracing off ------ for client
chef-solo ---------- for client checking runlist

knife client list
knife ssl check
knife ssl fetch
************************* fetch two certification if not avail in local****************
/root/chef-repo/.chef/trusted_certs/  ----------location of folder
wildcard_opscode_com.crt
DigiCert_SHA2_Secure_Server_CA.crt
*****************************************************************************************

chef serrver configuration file location

The Chef Infra Server can be configured via the /etc/opscode/chef-server.rb file.
Whenever this file is modified, the chef-server-ctl reconfigure command must be run to apply the changes.

Cookbooks (including recipes, attributes, custom resources, libraries, and templates)
Roles
Data bags
Environments

A cookbook is the fundamental unit of configuration and policy distribution.
A cookbook defines a scenario and contains everything that is required to support that scenario:
1.Recipes that specify the resources to use and the order in which they are to be applied
2.Attribute values
3.File distributions
4.Templates
5.Extensions to Chef, such as custom resources and libraries

An attribute is a specific detail about a node. Attributes are used by the Chef Infra Client to understand:
.The current state of the node
.What the state of the node was at the end of the previous Chef Infra Client run
.What the state of the node should be at the end of the current Chef Infra Client run
Attributes are defined by:
.The state of the node itself
.Cookbooks (in attribute files and/or recipes)
.Roles
.Environments

A recipe is the most fundamental configuration element within the organization. A recipe:
Is authored using Ruby, which is a programming language designed to read and behave in a predictable manner
Is mostly a collection of resources, defined using patterns (resource names, attribute-value pairs, and actions);
    helper code is added around this using Ruby, when needed
Must define everything that is required to configure part of a system
Must be stored in a cookbook
May be included in another recipe
May use the results of a search query and read the contents of a data bag (including an encrypted data bag)
May have a dependency on one (or more) recipes
Must be added to a run-list before it can be used by the Chef Infra Client
Is always executed in the same order as listed in a run-list

chef-shell allows the current position in a run-list to be manipulated during a Chef Infra Client run.
Add breakpoints to a recipe to take advantage of this functionality.
Use the breakpoint resource to add breakpoints to recipes.
Run the chef-shell in Chef Infra Client mode, and then use those breakpoints to debug recipes.
Breakpoints are ignored by the Chef Infra Client during an actual Chef Infra Client run.
That said, breakpoints are typically used to debug recipes only when running them in a non-production environment,
  after which they are removed from those recipes before the parent cookbook is uploaded to the Chef Infra Server.

chef-she'll options
-l LEVEL, --log-level LEVEL
The level of logging to be stored in a log file.
-s, --solo
Run chef-shell in chef-solo mode.
-S CHEF_SERVER_URL, --server CHEF_SERVER_URL
The URL for the Chef Infra Server.
-v, --version
The version of the Chef Infra Client.
-z, --client
Run chef-shell in Chef Infra Client mode.




Berkshelf is a dependency manager for Chef cookbooks.
 With it, you can easily depend on community cookbooks and have them safely included in your workflow.
 You can also ensure that your CI systems reproducibly select the same cookbook versions,
            and can upload and bundle cookbook dependencies without needing a locally maintained copy.
 Berkshelf is included in ChefDK
 
 ```
