require "arcane"
require "pry"
require "active_support/core_ext"
require "active_model/naming"

class Article; end
class ArticleRefinery < Arcane::Refinery

  def create
    update + [ { links: [:blog, :site] } ]
  end

  def publish
    update + [ { tags: [] } ]
  end

  def update
    default + [:content]
  end

  def default
    [:title]
  end

end

class Task; end
class TaskRefinery < Arcane::Refinery

  def self.root
    false
  end

end

class Shape; end