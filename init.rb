require 'redmine'

# Plugin
Redmine::Plugin.register :redmine_tfs_macros do
  name 'Redmine TFS Macros plugin'
  author 'Yasuyuki Saito'
  description 'This is a plug-in that Wiki macros for TFS is defined.'
  version '0.0.1'
  url 'https://github.com/yasu-s/redmine_tfs_macros'
end


# Changset Link
Redmine::WikiFormatting::Macros.register do
  macro :tfs_changeset do |obj, args|
    word = args.first
    link_to(word, "http://127.0.0.1/DefaultCollection/Team/_versionControl/changesets#cs=" + CGI.escape(word))
  end
end

# WorkItem Link
Redmine::WikiFormatting::Macros.register do
  macro :tfs_workitem do |obj, args|
    word = args.first
    link_to(word, "http://127.0.0.1/DefaultCollection/Team/_workitems#id=" + CGI.escape(word) + "&_a=edit")
  end
end

# File Link
Redmine::WikiFormatting::Macros.register do
  macro :tfs_file do |obj, args|
    word = args.first
    link_to(word, "http://127.0.0.1/DefaultCollection/Team/_versionControl#path=" + CGI.escape(word) + "&_a=contents")
  end
end
