defmodule Digiramp.Avatar do
  use Arc.Definition

  # Include ecto support (requires package arc_ecto installed):
  use Arc.Ecto.Definition

  #@versions [:original]

  # To add a thumbnail version:
  @versions [:original, :thumb]
  
  @acl :public_read

  # Whitelist file extensions:
  def validate({file, _}) do
    ~w(.jpg .jpeg .gif .png) |> Enum.member?(Path.extname(file.file_name))
  end
  
  # Define a thumbnail transformation:
  def transform(:thumb, _) do
    {:convert, "-strip -thumbnail 150x150^ -gravity center -extent 150x150 -format png"}
  end
  
  

  # Override the persisted filenames:
  #def filename(version, _) do
  #  version
  #end
  #def filename(version, {file, scope}) do
  #  "#{scope.id}_#{version}_#{file.file_name}"
  #end
  def filename(version, {file, _}) do
    "#{version}_#{file.file_name}"
  end

  # Override the storage directory:
  #def storage_dir(version, {file, scope}) do
  #  "uploads/users/avatars/#{scope.id}"
  #end
  def storage_dir(version, {file, _}) do
    "uploads/users/avatars"
  end

  #Provide a default URL if there hasn't been a file uploaded
  def default_url(version) do
    "/images/avatars/default_#{version}.png"
  end
end
