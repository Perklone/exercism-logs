defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim
    |> String.first
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(fn x -> first_letter(x) end)
    |> Enum.map(fn x -> initial(x) end)
    |> Enum.reduce(fn x, res -> res <> " " <> x end)
  end

  def pair(full_name1, full_name2) do
    a = full_name1
    |> initials()

    b = full_name2
    |> initials()

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{a}  +  #{b}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
