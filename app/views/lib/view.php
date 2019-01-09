<table>
    <?php if($id == 'mvo'): ?>
<?php foreach ($mvoarr as $item=>$value):?>

    <tr>
        <td><?php echo $value['id'] ?></td>
        <td><?php echo $value['name'] ?></td>
        <td><?php echo $value['department'] ?></td>
        <td><?php echo $value['location'] ?></td>
    </tr>

<?php endforeach; ?>
    <?php endif; ?>
</table>