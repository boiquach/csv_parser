class CsvRow
    def initialize(item, id, parent)
        @item = item
        @id = id
        @parent = parent
        @children = []
    end

    def to_s(indent = 1)
        prefix = '+ '
        string = '  ' * indent + prefix + item + "\n"

        return string if children.empty?
        children.each do |child|
            string += child.to_s(indent + 2)
        end
        string
    end

    attr_accessor :parent, :id, :item, :children
end