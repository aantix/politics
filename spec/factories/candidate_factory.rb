Factory.define :candidate do |s|
  s.name "Chuck Norris"
  s.description "Built like a steal building"
  s.association :party, :factory => :party
end