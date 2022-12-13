class ArticleSerializer < ActiveModel::Serializer
  # Filtra a busca de article e mostra apenas esses parâmetros
  attributes :id, :title, :body
end
