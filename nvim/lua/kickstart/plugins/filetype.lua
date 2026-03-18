---@module 'lazy'
---@type LazySpec
return {
  vim.filetype.add {
    pattern = {
      -- ---------------------------
      -- filetype: yaml.ansible
      -- ---------------------------

      ['.*/ansible/.*%yml'] = 'yaml.ansible',
      ['.*/ansible/.*%yaml'] = 'yaml.ansible',

      ['.*/playbooks/.*%yml'] = 'yaml.ansible',
      ['.*/playbooks/.*%yaml'] = 'yaml.ansible',

      ['.*/roles/.*/tasks/.*%yml'] = 'yaml.ansible',
      ['.*/roles/.*/tasks/.*%yaml'] = 'yaml.ansible',

      ['.*/roles/.*/handlers/.*%yml'] = 'yaml.ansible',
      ['.*/roles/.*/defaults/.*%yml'] = 'yaml.ansible',
      ['.*/roles/.*/vars/.*%yml'] = 'yaml.ansible',
      ['.*/roles/.*/handlers/.*%yaml'] = 'yaml.ansible',
      ['.*/roles/.*/defaults/.*%yaml'] = 'yaml.ansible',
      ['.*/roles/.*/vars/.*%yaml'] = 'yaml.ansible',

      -- ---------------------------
      -- filetype: terraform
      -- ---------------------------

      -- ['.*/terraform/*.tf'] = 'terraform',
    },
    extension = {
      tf = 'terraform',
    },
  },
}
