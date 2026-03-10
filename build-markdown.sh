#!/bin/bash
# Generate combined markdown files for AI agents
# These are smaller alternatives to the full HTML documentation

set -e

generate_markdown() {
    local source_file="$1"
    local output_file="$2"
    local title="$3"

    echo "Generating $output_file..."

    echo "# $title" > "$output_file"
    echo "" >> "$output_file"

    # Parse YAML front matter to get includes
    # Extract lines between "includes:" and the next YAML key (lines starting with a letter)
    includes=$(sed -n '/^includes:/,/^[a-z]/p' "$source_file" | grep "^\s*-" | sed 's/.*- //')

    for include in $includes; do
        # Convert include path to file path
        # e.g., "wp-api-v3/introduction" -> "source/includes/wp-api-v3/_introduction.md"
        dir=$(dirname "$include")
        base=$(basename "$include")
        include_file="source/includes/${dir}/_${base}.md"

        if [ -f "$include_file" ]; then
            cat "$include_file" >> "$output_file"
            echo "" >> "$output_file"
        else
            echo "Warning: Include file not found: $include_file"
        fi
    done

    # Report file size
    size=$(wc -c < "$output_file" | tr -d ' ')
    echo "  Generated: $output_file ($(numfmt --to=iec-i --suffix=B $size 2>/dev/null || echo "${size} bytes"))"
}

mkdir -p build

# Generate each version
generate_markdown "source/index.html.md" "build/index.md" "WooCommerce REST API Documentation (WP REST API v3)"
generate_markdown "source/wp-api-v1.html.md" "build/wp-api-v1.md" "WooCommerce REST API Documentation (WP REST API v1)"
generate_markdown "source/wp-api-v2.html.md" "build/wp-api-v2.md" "WooCommerce REST API Documentation (WP REST API v2)"

echo ""
echo "Markdown files generated in build/"
