+++
title = "Try GNU social"
description = "Join one of the various already existing public GNU social instances!"
draft = false
bref = "Please note that the servers listed here are not run by us and we are not responsible for their operation or their content. They are listed here as a service to the community"
+++

<h3 class="section-head" id="h-basic-template"><a href="#h-basic-template">Public GNU social servers</a></h3>
  <p>This table's data comes from the federation - a statistics hub, if you want to be listed here, please go to https://the-federation.info/register/. After some seconds, you should see your node added.</p>
  <table class="striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Country</th>
      </tr>
    </thead>
    <tbody>
    {{< php_code >}}
        <?php
        $query = urlencode('
        {
          nodes(platform: "gnusocial") {
            openSignups
            name
            host
            countryCode
          }
        }
        ');
        $query_result = json_decode(file_get_contents("https://the-federation.info/graphql?query={$query}"), true);
        $query_result = $query_result['data']['nodes'];
        // Filter out instances with closed signups
        $nodes = array_filter($query_result, function ($node) {
            return $node['openSignups'];
        });
        // garbage collect
        unset($query_result);
        ?>
        <?php foreach ($nodes as $node): ?>
        <tr>
            <td>
                <a href="https://<?php echo $node['host']; ?>"><?php echo $node['name']; ?></a>
            </td>
            <td>
                <?php echo $node['countryCode']; ?>
            </td>
        </tr>
        <?php endforeach; ?>
    {{< /php_code >}}
    </tbody>
  </table>
