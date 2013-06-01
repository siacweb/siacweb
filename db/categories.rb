#encoding UTF-8

def create_categories
  begin

    if Categorie.all.size == 0

      Categorie.create([
                           {:name => "Bares"}
                       ])

    end

  end
end