require "google_drive"
require "tempfile"
# Creates a session. This will prompt the credential via command line for the
# first time and save it to config.json file for later usages.
# See this document to learn how to create config.json:
# https://github.com/gimite/google-drive-ruby/blob/master/doc/authorization.md
session = GoogleDrive::Session.from_config("client_secret.json")

# Gets list of remote files.
session.files.each do |file|
  p file.title
end

# Uploads a local file.
session.upload_from_file("./hello.txt", "hello.txt", convert: false)

# # Downloads to a local file.
# file = session.file_by_title("hello.txt")
# file.download_to_file("/hello.txt")

# Updates content of the remote file.
# file.update_from_file("/hello.txt")

#
#
# csv = <<__CSV__
# 1,日本語,aaa
# 2,,bbb
# 3,ほげ,ccc
# 4,時間,#{Time.now.to_s}
# __CSV__
#
# title = "google_drive_api_test-1"
#
# Tempfile.open([title, ".csv"]) do |file|
#   file << csv # [下準備] ファイルを作る
#
#   session = GoogleDrive.login_with_oauth("4/AABO5Xd96IKIC8HRWqdbXOX8k7UsVIU_fW4ebC4Q6-Z4lQhh5757kVs")
#   session.upload_from_file(file, title)
# end
