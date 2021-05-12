#!/bin/bash
{% for peer in gobgp_neighbors %}
gobgp -u {{ gobgp_api_host }} -p {{ peer.api_port }} mrt inject global --only-best --nexthop={{ gobgp_router_id }} --no-ipv6  {{ peer.mrt_mib_file }}
{% endfor %}