Fabricator(:invoice_item, :class_name => 'SalesEngine::InvoiceItem') do
  on_init {
    init_with(
      :id => (1..10).to_a.sample,
      :item => Fabricate(:item),
      :invoice => Fabricate(:invoice),
      :quantity => (1..100).to_a.sample,
      :unit_price => (1..100000).to_a.sample
    )
  }
end

