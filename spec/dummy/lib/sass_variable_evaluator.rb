class SassVariableEvaluator < Sass::Tree::Visitors::Base
  def visit_comment(node)
    # prevents empty arrays from being in the returned array
  end

  def visit_variable(node)
    @environment ||= Sass::Environment.new
    @environment.set_local_var(node.name, node.expr)
    [node.name, node.expr.perform(@environment)]
  rescue Sass::SyntaxError
  end
end
