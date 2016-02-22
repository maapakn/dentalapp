# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
Mime::Type.register "application/vnd.ms-pki.stl", :stl, [], %w(stl)

octet_stream = MIME::Types["application/octet-stream"].first
octet_stream.add_extensions "stl"