defprotocol AsAtom do
  def to_atom(data)
end

defimpl AsAtom, for: Atom do
  def to_atom(atom), do: atom
end

defimpl AsAtom, for: BitString do
  defdelegate to_atom(string), to: String 
end

defimpl AsAtom, for: List do
  defdelegate to_atom(list),  to: List
end 

defimpl AsAtom, for: Map do
  defdelegate to_atom(map), to: Map
end
