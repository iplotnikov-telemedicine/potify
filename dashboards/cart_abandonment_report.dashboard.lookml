- dashboard: cart_abandonment_report
  title: Cart Abandonment Report
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  query_timezone: user_timezone
  preferred_slug: RLsKmJ4vQ61gJ0c3XjnCHm
  elements:
  - title: Cart Abandonment Report
    name: Cart Abandonment Report
    model: sweede
    explore: shop_cart_item
    type: looker_grid
    fields: [fos_user.email, product.product_list, shop_cart.changed_by_user_time]
    filters:
      mb_company.original_id: '5319'
    sorts: [shop_cart.changed_by_user_time desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations: {}
    series_text_format:
      product.product_list:
        align: left
    defaults_version: 1
    listen:
      Changed By User Time: shop_cart.changed_by_user_time
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Changed By User Time
    title: Changed By User Time
    type: field_filter
    default_value: 60 minutes ago for 30 minutes
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: sweede
    explore: shop_cart_item
    listens_to_filters: []
    field: shop_cart.changed_by_user_time
