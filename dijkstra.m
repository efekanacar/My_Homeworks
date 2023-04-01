function distances = dijkstra(graph, start)
    nodes = fieldnames(graph);
    n = numel(nodes);
    distances = Inf(1, n);
    visited = false(1, n);
    distances(start) = 0;

    while ~all(visited)
        [~, idx] = min(distances(~visited));
        current_node = nodes{~visited}(idx);
        visited(strcmp(nodes, current_node)) = true;
        neighbors = fieldnames(graph.(current_node));
        for i = 1:numel(neighbors)
            neighbor = neighbors{i};
            weight = graph.(current_node).(neighbor);
            distance = distances(strcmp(nodes, current_node)) + weight;
            if distance < distances(strcmp(nodes, neighbor))
                distances(strcmp(nodes, neighbor)) = distance;
            end
        end
    end
end

