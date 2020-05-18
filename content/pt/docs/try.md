+++
title = "Experimenta o GNU social"
description = "Junta-te a uma das várias instâncias GNU social públicas que já existem!"
draft = false
date = "2020-03-02T21:56:55+01:00"
bref = "Por favor, note que a equipa de programadores do GNU social não tem qualquer responsabilidade pela operação ou conteúdo dos sítios que executam este programa. Eles estão aqui listados apenas como um serviço à comunidade"
+++

<h3 class="section-head" id="h-basic-template"><a href="#h-basic-template">Servidores GNU social públicos</a></h3>
  <p>Os dados desta tabela são provenientes de <a href="https://the-federation.info/">the federation - a statistics hub</a>,
     se gostarias de ter a tua instância listada aqui: https://the-federation.info/register/<yournode.tld>.
     Após alguns segundos, deverás encontrar o teu nó na lista.
  </p> 
  <table class="striped">
    <thead>
      <tr>
        <th>Nome</th>
        <th>País</th>
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
