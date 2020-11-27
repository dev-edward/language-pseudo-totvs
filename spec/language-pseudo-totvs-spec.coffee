# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "PseudoTotvs grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-pseudo-totvs")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.pseudo-totvs")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.pseudo-totvs"
